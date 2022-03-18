{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Network.Google.PlusDomains.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.PlusDomains.Types
  ( -- * Configuration
    plusDomainsService,

    -- * OAuth Scopes
    plusCirclesReadScope,
    plusLoginScope,
    plusMeScope,
    plusMediaUploadScope,
    plusProfilesReadScope,
    plusStreamReadScope,
    userinfoEmailScope,
    userinfoProfileScope,

    -- * Types

    -- ** Acl
    Acl (..),
    newAcl,

    -- ** Activity
    Activity (..),
    newActivity,

    -- ** Activity_Actor
    Activity_Actor (..),
    newActivity_Actor,

    -- ** Activity_Actor_ClientSpecificActorInfo
    Activity_Actor_ClientSpecificActorInfo (..),
    newActivity_Actor_ClientSpecificActorInfo,

    -- ** Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo (..),
    newActivity_Actor_ClientSpecificActorInfo_YoutubeActorInfo,

    -- ** Activity_Actor_Image
    Activity_Actor_Image (..),
    newActivity_Actor_Image,

    -- ** Activity_Actor_Name
    Activity_Actor_Name (..),
    newActivity_Actor_Name,

    -- ** Activity_Actor_Verification
    Activity_Actor_Verification (..),
    newActivity_Actor_Verification,

    -- ** Activity_Object
    Activity_Object (..),
    newActivity_Object,

    -- ** Activity_Object_Actor
    Activity_Object_Actor (..),
    newActivity_Object_Actor,

    -- ** Activity_Object_Actor_ClientSpecificActorInfo
    Activity_Object_Actor_ClientSpecificActorInfo (..),
    newActivity_Object_Actor_ClientSpecificActorInfo,

    -- ** Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo (..),
    newActivity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo,

    -- ** Activity_Object_Actor_Image
    Activity_Object_Actor_Image (..),
    newActivity_Object_Actor_Image,

    -- ** Activity_Object_Actor_Verification
    Activity_Object_Actor_Verification (..),
    newActivity_Object_Actor_Verification,

    -- ** Activity_Object_AttachmentsItem
    Activity_Object_AttachmentsItem (..),
    newActivity_Object_AttachmentsItem,

    -- ** Activity_Object_AttachmentsItem_Embed
    Activity_Object_AttachmentsItem_Embed (..),
    newActivity_Object_AttachmentsItem_Embed,

    -- ** Activity_Object_AttachmentsItem_FullImage
    Activity_Object_AttachmentsItem_FullImage (..),
    newActivity_Object_AttachmentsItem_FullImage,

    -- ** Activity_Object_AttachmentsItem_Image
    Activity_Object_AttachmentsItem_Image (..),
    newActivity_Object_AttachmentsItem_Image,

    -- ** Activity_Object_AttachmentsItem_PreviewThumbnailsItem
    Activity_Object_AttachmentsItem_PreviewThumbnailsItem (..),
    newActivity_Object_AttachmentsItem_PreviewThumbnailsItem,

    -- ** Activity_Object_AttachmentsItem_ThumbnailsItem
    Activity_Object_AttachmentsItem_ThumbnailsItem (..),
    newActivity_Object_AttachmentsItem_ThumbnailsItem,

    -- ** Activity_Object_AttachmentsItem_ThumbnailsItem_Image
    Activity_Object_AttachmentsItem_ThumbnailsItem_Image (..),
    newActivity_Object_AttachmentsItem_ThumbnailsItem_Image,

    -- ** Activity_Object_Plusoners
    Activity_Object_Plusoners (..),
    newActivity_Object_Plusoners,

    -- ** Activity_Object_Replies
    Activity_Object_Replies (..),
    newActivity_Object_Replies,

    -- ** Activity_Object_Resharers
    Activity_Object_Resharers (..),
    newActivity_Object_Resharers,

    -- ** Activity_Object_StatusForViewer
    Activity_Object_StatusForViewer (..),
    newActivity_Object_StatusForViewer,

    -- ** Activity_Provider
    Activity_Provider (..),
    newActivity_Provider,

    -- ** ActivityFeed
    ActivityFeed (..),
    newActivityFeed,

    -- ** Audience
    Audience (..),
    newAudience,

    -- ** AudiencesFeed
    AudiencesFeed (..),
    newAudiencesFeed,

    -- ** Circle
    Circle (..),
    newCircle,

    -- ** Circle_People
    Circle_People (..),
    newCircle_People,

    -- ** CircleFeed
    CircleFeed (..),
    newCircleFeed,

    -- ** Comment
    Comment (..),
    newComment,

    -- ** Comment_Actor
    Comment_Actor (..),
    newComment_Actor,

    -- ** Comment_Actor_ClientSpecificActorInfo
    Comment_Actor_ClientSpecificActorInfo (..),
    newComment_Actor_ClientSpecificActorInfo,

    -- ** Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo (..),
    newComment_Actor_ClientSpecificActorInfo_YoutubeActorInfo,

    -- ** Comment_Actor_Image
    Comment_Actor_Image (..),
    newComment_Actor_Image,

    -- ** Comment_Actor_Verification
    Comment_Actor_Verification (..),
    newComment_Actor_Verification,

    -- ** Comment_InReplyToItem
    Comment_InReplyToItem (..),
    newComment_InReplyToItem,

    -- ** Comment_Object
    Comment_Object (..),
    newComment_Object,

    -- ** Comment_Plusoners
    Comment_Plusoners (..),
    newComment_Plusoners,

    -- ** CommentFeed
    CommentFeed (..),
    newCommentFeed,

    -- ** Media
    Media (..),
    newMedia,

    -- ** Media_Author
    Media_Author (..),
    newMedia_Author,

    -- ** Media_Author_Image
    Media_Author_Image (..),
    newMedia_Author_Image,

    -- ** Media_Exif
    Media_Exif (..),
    newMedia_Exif,

    -- ** PeopleFeed
    PeopleFeed (..),
    newPeopleFeed,

    -- ** Person
    Person (..),
    newPerson,

    -- ** Person_Cover
    Person_Cover (..),
    newPerson_Cover,

    -- ** Person_Cover_CoverInfo
    Person_Cover_CoverInfo (..),
    newPerson_Cover_CoverInfo,

    -- ** Person_Cover_CoverPhoto
    Person_Cover_CoverPhoto (..),
    newPerson_Cover_CoverPhoto,

    -- ** Person_EmailsItem
    Person_EmailsItem (..),
    newPerson_EmailsItem,

    -- ** Person_Image
    Person_Image (..),
    newPerson_Image,

    -- ** Person_Name
    Person_Name (..),
    newPerson_Name,

    -- ** Person_OrganizationsItem
    Person_OrganizationsItem (..),
    newPerson_OrganizationsItem,

    -- ** Person_PlacesLivedItem
    Person_PlacesLivedItem (..),
    newPerson_PlacesLivedItem,

    -- ** Person_UrlsItem
    Person_UrlsItem (..),
    newPerson_UrlsItem,

    -- ** Place
    Place (..),
    newPlace,

    -- ** Place_Address
    Place_Address (..),
    newPlace_Address,

    -- ** Place_Position
    Place_Position (..),
    newPlace_Position,

    -- ** PlusDomainsAclentryResource
    PlusDomainsAclentryResource (..),
    newPlusDomainsAclentryResource,

    -- ** Videostream
    Videostream (..),
    newVideostream,

    -- ** ActivitiesListCollection
    ActivitiesListCollection (..),

    -- ** CommentsListSortOrder
    CommentsListSortOrder (..),

    -- ** MediaInsertCollection
    MediaInsertCollection (..),

    -- ** PeopleListCollection
    PeopleListCollection (..),

    -- ** PeopleListOrderBy
    PeopleListOrderBy (..),

    -- ** PeopleListByActivityCollection
    PeopleListByActivityCollection (..),
  )
where

import Network.Google.PlusDomains.Internal.Product
import Network.Google.PlusDomains.Internal.Sum
import qualified Network.Google.Prelude as Core

-- | Default request referring to version @v1@ of the Google+ Domains API. This contains the host and root path used as a starting point for constructing service requests.
plusDomainsService :: Core.ServiceConfig
plusDomainsService =
  Core.defaultService
    (Core.ServiceId "plusDomains:v1")
    "www.googleapis.com"

-- | View your circles and the people and pages in them
plusCirclesReadScope :: Core.Proxy '["https://www.googleapis.com/auth/plus.circles.read"]
plusCirclesReadScope = Core.Proxy

-- | View your basic profile info, including your age range and language
plusLoginScope :: Core.Proxy '["https://www.googleapis.com/auth/plus.login"]
plusLoginScope = Core.Proxy

-- | Associate you with your personal info on Google
plusMeScope :: Core.Proxy '["https://www.googleapis.com/auth/plus.me"]
plusMeScope = Core.Proxy

-- | Send your photos and videos to Google+
plusMediaUploadScope :: Core.Proxy '["https://www.googleapis.com/auth/plus.media.upload"]
plusMediaUploadScope = Core.Proxy

-- | View your own Google+ profile and profiles visible to you
plusProfilesReadScope :: Core.Proxy '["https://www.googleapis.com/auth/plus.profiles.read"]
plusProfilesReadScope = Core.Proxy

-- | View your Google+ posts, comments, and stream
plusStreamReadScope :: Core.Proxy '["https://www.googleapis.com/auth/plus.stream.read"]
plusStreamReadScope = Core.Proxy

-- | View your email address
userinfoEmailScope :: Core.Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userinfoEmailScope = Core.Proxy

-- | See your personal info, including any personal info you\'ve made publicly available
userinfoProfileScope :: Core.Proxy '["https://www.googleapis.com/auth/userinfo.profile"]
userinfoProfileScope = Core.Proxy
