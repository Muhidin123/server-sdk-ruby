# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: livekit_models.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("livekit_models.proto", :syntax => :proto3) do
    add_message "livekit.Room" do
      optional :sid, :string, 1
      optional :name, :string, 2
      optional :empty_timeout, :uint32, 3
      optional :max_participants, :uint32, 4
      optional :creation_time, :int64, 5
      optional :turn_password, :string, 6
      repeated :enabled_codecs, :message, 7, "livekit.Codec"
      optional :metadata, :string, 8
      optional :num_participants, :uint32, 9
    end
    add_message "livekit.Codec" do
      optional :mime, :string, 1
      optional :fmtp_line, :string, 2
    end
    add_message "livekit.ParticipantInfo" do
      optional :sid, :string, 1
      optional :identity, :string, 2
      optional :state, :enum, 3, "livekit.ParticipantInfo.State"
      repeated :tracks, :message, 4, "livekit.TrackInfo"
      optional :metadata, :string, 5
      optional :joined_at, :int64, 6
      optional :hidden, :bool, 7
    end
    add_enum "livekit.ParticipantInfo.State" do
      value :JOINING, 0
      value :JOINED, 1
      value :ACTIVE, 2
      value :DISCONNECTED, 3
    end
    add_message "livekit.TrackInfo" do
      optional :sid, :string, 1
      optional :type, :enum, 2, "livekit.TrackType"
      optional :name, :string, 3
      optional :muted, :bool, 4
      optional :width, :uint32, 5
      optional :height, :uint32, 6
      optional :simulcast, :bool, 7
      optional :disable_dtx, :bool, 8
    end
    add_message "livekit.DataPacket" do
      optional :kind, :enum, 1, "livekit.DataPacket.Kind"
      oneof :value do
        optional :user, :message, 2, "livekit.UserPacket"
        optional :speaker, :message, 3, "livekit.ActiveSpeakerUpdate"
      end
    end
    add_enum "livekit.DataPacket.Kind" do
      value :RELIABLE, 0
      value :LOSSY, 1
    end
    add_message "livekit.ActiveSpeakerUpdate" do
      repeated :speakers, :message, 1, "livekit.SpeakerInfo"
    end
    add_message "livekit.SpeakerInfo" do
      optional :sid, :string, 1
      optional :level, :float, 2
      optional :active, :bool, 3
    end
    add_message "livekit.UserPacket" do
      optional :participant_sid, :string, 1
      optional :payload, :bytes, 2
      repeated :destination_sids, :string, 3
    end
    add_enum "livekit.TrackType" do
      value :AUDIO, 0
      value :VIDEO, 1
      value :DATA, 2
    end
  end
end

module Livekit
  module Proto
    Room = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.Room").msgclass
    Codec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.Codec").msgclass
    ParticipantInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ParticipantInfo").msgclass
    ParticipantInfo::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ParticipantInfo.State").enummodule
    TrackInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.TrackInfo").msgclass
    DataPacket = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.DataPacket").msgclass
    DataPacket::Kind = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.DataPacket.Kind").enummodule
    ActiveSpeakerUpdate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.ActiveSpeakerUpdate").msgclass
    SpeakerInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.SpeakerInfo").msgclass
    UserPacket = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.UserPacket").msgclass
    TrackType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("livekit.TrackType").enummodule
  end
end
