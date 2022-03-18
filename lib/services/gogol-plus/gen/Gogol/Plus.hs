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
-- Module      : Gogol.Plus
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Builds on top of the Google+ platform.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference>
module Gogol.Plus
  ( -- * Configuration
    plusService,

    -- * OAuth Scopes
    plusLoginScope,
    plusMeScope,
    userinfoEmailScope,
    userinfoProfileScope,

    -- * Resources

    -- ** plus.activities.get
    PlusActivitiesGetResource,
    newPlusActivitiesGet,
    PlusActivitiesGet,

    -- ** plus.activities.list
    PlusActivitiesListResource,
    newPlusActivitiesList,
    PlusActivitiesList,

    -- ** plus.activities.search
    PlusActivitiesSearchResource,
    newPlusActivitiesSearch,
    PlusActivitiesSearch,

    -- ** plus.comments.get
    PlusCommentsGetResource,
    newPlusCommentsGet,
    PlusCommentsGet,

    -- ** plus.comments.list
    PlusCommentsListResource,
    newPlusCommentsList,
    PlusCommentsList,

    -- ** plus.people.get
    PlusPeopleGetResource,
    newPlusPeopleGet,
    PlusPeopleGet,

    -- ** plus.people.list
    PlusPeopleListResource,
    newPlusPeopleList,
    PlusPeopleList,

    -- ** plus.people.listByActivity
    PlusPeopleListByActivityResource,
    newPlusPeopleListByActivity,
    PlusPeopleListByActivity,

    -- ** plus.people.search
    PlusPeopleSearchResource,
    newPlusPeopleSearch,
    PlusPeopleSearch,

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

    -- ** Activity_Provider
    Activity_Provider (..),
    newActivity_Provider,

    -- ** ActivityFeed
    ActivityFeed (..),
    newActivityFeed,

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

    -- ** PeopleFeed
    PeopleFeed (..),
    newPeopleFeed,

    -- ** Person
    Person (..),
    newPerson,

    -- ** Person_AgeRange
    Person_AgeRange (..),
    newPerson_AgeRange,

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

    -- ** PlusAclentryResource
    PlusAclentryResource (..),
    newPlusAclentryResource,

    -- ** ActivitiesListCollection
    ActivitiesListCollection (..),

    -- ** ActivitiesSearchOrderBy
    ActivitiesSearchOrderBy (..),

    -- ** CommentsListSortOrder
    CommentsListSortOrder (..),

    -- ** PeopleListCollection
    PeopleListCollection (..),

    -- ** PeopleListOrderBy
    PeopleListOrderBy (..),

    -- ** PeopleListByActivityCollection
    PeopleListByActivityCollection (..),
  )
where

import Gogol.Plus.Activities.Get
import Gogol.Plus.Activities.List
import Gogol.Plus.Activities.Search
import Gogol.Plus.Comments.Get
import Gogol.Plus.Comments.List
import Gogol.Plus.People.Get
import Gogol.Plus.People.List
import Gogol.Plus.People.ListByActivity
import Gogol.Plus.People.Search
import Gogol.Plus.Types
