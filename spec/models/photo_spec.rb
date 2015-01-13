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
        cache_paths = Dir["spec/tmp/uploads/cache/*"]
        matches = 0
        cache_paths.each {|path| matches += 1 if path.include? photo.image.id.to_s}
        expect(matches).to eq(1)
      end
    end

    context "when attaching a file that is not an image" do

      it "raises an assertion error" do
      end
    end
  end

  describe "#save" do

    context "when saving with an attached image" do

      it "sends the attached image to the store backend" do
      end

      it "sets the image_id property" do
      end
    end

      context "when saving without an attached image" do

        it "raises a validation error" do
        end
      end
    end
end