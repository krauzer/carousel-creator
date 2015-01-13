require 'spec_helper'

describe Photo, type: :model do

  describe "#image" do

    context "when attaching an image" do

      it "sets the image_filename property" do
      end

      it "sets the image_size property" do
      end

      it "sets the image_content_type property" do
      end

      it "sends it to the cache backend" do
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