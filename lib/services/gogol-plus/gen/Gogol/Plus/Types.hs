{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Plus.Types
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Plus.Types
    (
    -- * Configuration
      plusService

    -- * OAuth Scopes
    , plusLoginScope
    , plusMeScope
    , userinfoEmailScope
    , userinfoProfileScope

    -- * Types

    -- ** Acl
    , Acl (..)
    , newAcl

    -- ** Activity
    , Activity (..)
    , newActivity

    -- ** Activity_Actor
    , Activity_Actor (..)
    , newActivity_Actor

    -- ** Activity_Actor_ClientSpecificActorInfo
    , Activity_Actor_ClientSpecificActorInfo (..)
    , newActivity_Actor_ClientSpecificActorInfo

    -- ** Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    , Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo (..)
    , newActivity_Actor_ClientSpecificActorInfo_YoutubeActorInfo

    -- ** Activity_Actor_Image
    , Activity_Actor_Image (..)
    , newActivity_Actor_Image

    -- ** Activity_Actor_Name
    , Activity_Actor_Name (..)
    , newActivity_Actor_Name

    -- ** Activity_Actor_Verification
    , Activity_Actor_Verification (..)
    , newActivity_Actor_Verification

    -- ** Activity_Object
    , Activity_Object (..)
    , newActivity_Object

    -- ** Activity_Object_Actor
    , Activity_Object_Actor (..)
    , newActivity_Object_Actor

    -- ** Activity_Object_Actor_ClientSpecificActorInfo
    , Activity_Object_Actor_ClientSpecificActorInfo (..)
    , newActivity_Object_Actor_ClientSpecificActorInfo

    -- ** Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    , Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo (..)
    , newActivity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo

    -- ** Activity_Object_Actor_Image
    , Activity_Object_Actor_Image (..)
    , newActivity_Object_Actor_Image

    -- ** Activity_Object_Actor_Verification
    , Activity_Object_Actor_Verification (..)
    , newActivity_Object_Actor_Verification

    -- ** Activity_Object_AttachmentsItem
    , Activity_Object_AttachmentsItem (..)
    , newActivity_Object_AttachmentsItem

    -- ** Activity_Object_AttachmentsItem_Embed
    , Activity_Object_AttachmentsItem_Embed (..)
    , newActivity_Object_AttachmentsItem_Embed

    -- ** Activity_Object_AttachmentsItem_FullImage
    , Activity_Object_AttachmentsItem_FullImage (..)
    , newActivity_Object_AttachmentsItem_FullImage

    -- ** Activity_Object_AttachmentsItem_Image
    , Activity_Object_AttachmentsItem_Image (..)
    , newActivity_Object_AttachmentsItem_Image

    -- ** Activity_Object_AttachmentsItem_ThumbnailsItem
    , Activity_Object_AttachmentsItem_ThumbnailsItem (..)
    , newActivity_Object_AttachmentsItem_ThumbnailsItem

    -- ** Activity_Object_AttachmentsItem_ThumbnailsItem_Image
    , Activity_Object_AttachmentsItem_ThumbnailsItem_Image (..)
    , newActivity_Object_AttachmentsItem_ThumbnailsItem_Image

    -- ** Activity_Object_Plusoners
    , Activity_Object_Plusoners (..)
    , newActivity_Object_Plusoners

    -- ** Activity_Object_Replies
    , Activity_Object_Replies (..)
    , newActivity_Object_Replies

    -- ** Activity_Object_Resharers
    , Activity_Object_Resharers (..)
    , newActivity_Object_Resharers

    -- ** Activity_Provider
    , Activity_Provider (..)
    , newActivity_Provider

    -- ** ActivityFeed
    , ActivityFeed (..)
    , newActivityFeed

    -- ** Comment
    , Comment (..)
    , newComment

    -- ** Comment_Actor
    , Comment_Actor (..)
    , newComment_Actor

    -- ** Comment_Actor_ClientSpecificActorInfo
    , Comment_Actor_ClientSpecificActorInfo (..)
    , newComment_Actor_ClientSpecificActorInfo

    -- ** Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    , Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo (..)
    , newComment_Actor_ClientSpecificActorInfo_YoutubeActorInfo

    -- ** Comment_Actor_Image
    , Comment_Actor_Image (..)
    , newComment_Actor_Image

    -- ** Comment_Actor_Verification
    , Comment_Actor_Verification (..)
    , newComment_Actor_Verification

    -- ** Comment_InReplyToItem
    , Comment_InReplyToItem (..)
    , newComment_InReplyToItem

    -- ** Comment_Object
    , Comment_Object (..)
    , newComment_Object

    -- ** Comment_Plusoners
    , Comment_Plusoners (..)
    , newComment_Plusoners

    -- ** CommentFeed
    , CommentFeed (..)
    , newCommentFeed

    -- ** PeopleFeed
    , PeopleFeed (..)
    , newPeopleFeed

    -- ** Person
    , Person (..)
    , newPerson

    -- ** Person_AgeRange
    , Person_AgeRange (..)
    , newPerson_AgeRange

    -- ** Person_Cover
    , Person_Cover (..)
    , newPerson_Cover

    -- ** Person_Cover_CoverInfo
    , Person_Cover_CoverInfo (..)
    , newPerson_Cover_CoverInfo

    -- ** Person_Cover_CoverPhoto
    , Person_Cover_CoverPhoto (..)
    , newPerson_Cover_CoverPhoto

    -- ** Person_EmailsItem
    , Person_EmailsItem (..)
    , newPerson_EmailsItem

    -- ** Person_Image
    , Person_Image (..)
    , newPerson_Image

    -- ** Person_Name
    , Person_Name (..)
    , newPerson_Name

    -- ** Person_OrganizationsItem
    , Person_OrganizationsItem (..)
    , newPerson_OrganizationsItem

    -- ** Person_PlacesLivedItem
    , Person_PlacesLivedItem (..)
    , newPerson_PlacesLivedItem

    -- ** Person_UrlsItem
    , Person_UrlsItem (..)
    , newPerson_UrlsItem

    -- ** Place
    , Place (..)
    , newPlace

    -- ** Place_Address
    , Place_Address (..)
    , newPlace_Address

    -- ** Place_Position
    , Place_Position (..)
    , newPlace_Position

    -- ** PlusAclentryResource
    , PlusAclentryResource (..)
    , newPlusAclentryResource

    -- ** ActivitiesListCollection
    , ActivitiesListCollection (..)

    -- ** ActivitiesSearchOrderBy
    , ActivitiesSearchOrderBy (..)

    -- ** CommentsListSortOrder
    , CommentsListSortOrder (..)

    -- ** PeopleListCollection
    , PeopleListCollection (..)

    -- ** PeopleListOrderBy
    , PeopleListOrderBy (..)

    -- ** PeopleListByActivityCollection
    , PeopleListByActivityCollection (..)
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Plus.Internal.Product
import Gogol.Plus.Internal.Sum

-- | Default request referring to version @v1@ of the Google+ API. This contains the host and root path used as a starting point for constructing service requests.
plusService :: Core.ServiceConfig
plusService
  = Core.defaultService (Core.ServiceId "plus:v1")
      "www.googleapis.com"

-- | View your basic profile info, including your age range and language
plusLoginScope :: Core.Proxy '["https://www.googleapis.com/auth/plus.login"]
plusLoginScope = Core.Proxy

-- | Associate you with your personal info on Google
plusMeScope :: Core.Proxy '["https://www.googleapis.com/auth/plus.me"]
plusMeScope = Core.Proxy

-- | View your email address
userinfoEmailScope :: Core.Proxy '["https://www.googleapis.com/auth/userinfo.email"]
userinfoEmailScope = Core.Proxy

-- | See your personal info, including any personal info you\'ve made publicly available
userinfoProfileScope :: Core.Proxy '["https://www.googleapis.com/auth/userinfo.profile"]
userinfoProfileScope = Core.Proxy
