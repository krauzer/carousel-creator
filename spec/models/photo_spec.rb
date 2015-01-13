require 'spec_helper'

describe Photo, type: :model do
  let(:photo) {Photo.new}

  describe "#image" do

    context "when attaching an image" do
      before(:example) do
        File.open("spec/fixtures/sample_image.jpg", "rb") do |file|
          photo.image = file
        end
      end
      after(:example) {FileUtils.rm_rf(Dir.glob('spec/tmp/uploads/cache/*'))}

      it "sets the image_filename property" do
        expect(photo.image_filename).to eq("sample_image.jpg")
      end

      it "sets the image_size property" do
        expect(photo.image_size).to eq(104870)
      end

      it "sets the image_content_type property" do
        expect(photo.image_content_type).to eq("image/jpeg")
      end

      it "sends it to the cache backend" do
        expect(File.exist?("spec/tmp/uploads/cache/#{photo.image.id}")).to eq true
      end
    end

    context "when attaching a file that is not an image" do

      it "raises an assertion error" do
        File.open("spec/fixtures/sample_text.txt", "rb") do |file|
          expect {photo.image = file}.to raise_error
        end
      end
    end
  end

  describe "#save" do

    context "when saving with an attached image" do
       before(:example) do
         File.open("spec/fixtures/sample_image.jpg", "rb") do |file|
           photo.image = file
         end
      end
        after(:example) {FileUtils.rm_rf(Dir.glob('spec/tmp/uploads/store/*'))}

      it "sends the attached image to the store backend" do
        photo.save
       expect(File.exist?("spec/tmp/uploads/store/#{photo.image.id}")).to eq true
      end

      it "sets the image_id property" do
        photo.save
        expect(photo.image_id).to eq(photo.image.id)
      end
    end
  end
end