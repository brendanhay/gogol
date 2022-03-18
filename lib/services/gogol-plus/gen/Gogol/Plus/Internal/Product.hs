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
-- Module      : Gogol.Plus.Internal.Product
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.Plus.Internal.Product
  (

    -- * Acl
    Acl (..),
    newAcl,

    -- * Activity
    Activity (..),
    newActivity,

    -- * Activity_Actor
    Activity_Actor (..),
    newActivity_Actor,

    -- * Activity_Actor_ClientSpecificActorInfo
    Activity_Actor_ClientSpecificActorInfo (..),
    newActivity_Actor_ClientSpecificActorInfo,

    -- * Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo (..),
    newActivity_Actor_ClientSpecificActorInfo_YoutubeActorInfo,

    -- * Activity_Actor_Image
    Activity_Actor_Image (..),
    newActivity_Actor_Image,

    -- * Activity_Actor_Name
    Activity_Actor_Name (..),
    newActivity_Actor_Name,

    -- * Activity_Actor_Verification
    Activity_Actor_Verification (..),
    newActivity_Actor_Verification,

    -- * Activity_Object
    Activity_Object (..),
    newActivity_Object,

    -- * Activity_Object_Actor
    Activity_Object_Actor (..),
    newActivity_Object_Actor,

    -- * Activity_Object_Actor_ClientSpecificActorInfo
    Activity_Object_Actor_ClientSpecificActorInfo (..),
    newActivity_Object_Actor_ClientSpecificActorInfo,

    -- * Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo (..),
    newActivity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo,

    -- * Activity_Object_Actor_Image
    Activity_Object_Actor_Image (..),
    newActivity_Object_Actor_Image,

    -- * Activity_Object_Actor_Verification
    Activity_Object_Actor_Verification (..),
    newActivity_Object_Actor_Verification,

    -- * Activity_Object_AttachmentsItem
    Activity_Object_AttachmentsItem (..),
    newActivity_Object_AttachmentsItem,

    -- * Activity_Object_AttachmentsItem_Embed
    Activity_Object_AttachmentsItem_Embed (..),
    newActivity_Object_AttachmentsItem_Embed,

    -- * Activity_Object_AttachmentsItem_FullImage
    Activity_Object_AttachmentsItem_FullImage (..),
    newActivity_Object_AttachmentsItem_FullImage,

    -- * Activity_Object_AttachmentsItem_Image
    Activity_Object_AttachmentsItem_Image (..),
    newActivity_Object_AttachmentsItem_Image,

    -- * Activity_Object_AttachmentsItem_ThumbnailsItem
    Activity_Object_AttachmentsItem_ThumbnailsItem (..),
    newActivity_Object_AttachmentsItem_ThumbnailsItem,

    -- * Activity_Object_AttachmentsItem_ThumbnailsItem_Image
    Activity_Object_AttachmentsItem_ThumbnailsItem_Image (..),
    newActivity_Object_AttachmentsItem_ThumbnailsItem_Image,

    -- * Activity_Object_Plusoners
    Activity_Object_Plusoners (..),
    newActivity_Object_Plusoners,

    -- * Activity_Object_Replies
    Activity_Object_Replies (..),
    newActivity_Object_Replies,

    -- * Activity_Object_Resharers
    Activity_Object_Resharers (..),
    newActivity_Object_Resharers,

    -- * Activity_Provider
    Activity_Provider (..),
    newActivity_Provider,

    -- * ActivityFeed
    ActivityFeed (..),
    newActivityFeed,

    -- * Comment
    Comment (..),
    newComment,

    -- * Comment_Actor
    Comment_Actor (..),
    newComment_Actor,

    -- * Comment_Actor_ClientSpecificActorInfo
    Comment_Actor_ClientSpecificActorInfo (..),
    newComment_Actor_ClientSpecificActorInfo,

    -- * Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo (..),
    newComment_Actor_ClientSpecificActorInfo_YoutubeActorInfo,

    -- * Comment_Actor_Image
    Comment_Actor_Image (..),
    newComment_Actor_Image,

    -- * Comment_Actor_Verification
    Comment_Actor_Verification (..),
    newComment_Actor_Verification,

    -- * Comment_InReplyToItem
    Comment_InReplyToItem (..),
    newComment_InReplyToItem,

    -- * Comment_Object
    Comment_Object (..),
    newComment_Object,

    -- * Comment_Plusoners
    Comment_Plusoners (..),
    newComment_Plusoners,

    -- * CommentFeed
    CommentFeed (..),
    newCommentFeed,

    -- * PeopleFeed
    PeopleFeed (..),
    newPeopleFeed,

    -- * Person
    Person (..),
    newPerson,

    -- * Person_AgeRange
    Person_AgeRange (..),
    newPerson_AgeRange,

    -- * Person_Cover
    Person_Cover (..),
    newPerson_Cover,

    -- * Person_Cover_CoverInfo
    Person_Cover_CoverInfo (..),
    newPerson_Cover_CoverInfo,

    -- * Person_Cover_CoverPhoto
    Person_Cover_CoverPhoto (..),
    newPerson_Cover_CoverPhoto,

    -- * Person_EmailsItem
    Person_EmailsItem (..),
    newPerson_EmailsItem,

    -- * Person_Image
    Person_Image (..),
    newPerson_Image,

    -- * Person_Name
    Person_Name (..),
    newPerson_Name,

    -- * Person_OrganizationsItem
    Person_OrganizationsItem (..),
    newPerson_OrganizationsItem,

    -- * Person_PlacesLivedItem
    Person_PlacesLivedItem (..),
    newPerson_PlacesLivedItem,

    -- * Person_UrlsItem
    Person_UrlsItem (..),
    newPerson_UrlsItem,

    -- * Place
    Place (..),
    newPlace,

    -- * Place_Address
    Place_Address (..),
    newPlace_Address,

    -- * Place_Position
    Place_Position (..),
    newPlace_Position,

    -- * PlusAclentryResource
    PlusAclentryResource (..),
    newPlusAclentryResource,
  ) where

import qualified Gogol.Prelude as Core
import Gogol.Plus.Internal.Sum

--
-- /See:/ 'newAcl' smart constructor.
data Acl = Acl
    {
      -- | Description of the access granted, suitable for display.
      description :: (Core.Maybe Core.Text)
      -- | The list of access entries.
    , items :: (Core.Maybe [PlusAclentryResource])
      -- | Identifies this resource as a collection of access controls. Value: \"plus#acl\".
    , kind :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Acl' with the minimum fields required to make a request.
newAcl 
    ::  Acl
newAcl =
  Acl {description = Core.Nothing, items = Core.Nothing, kind = "plus#acl"}

instance Core.FromJSON Acl where
        parseJSON
          = Core.withObject "Acl"
              (\ o ->
                 Acl Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "items" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "kind" Core..!= "plus#acl"))

instance Core.ToJSON Acl where
        toJSON Acl{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("items" Core..=) Core.<$> items,
                  Core.Just ("kind" Core..= kind)])


--
-- /See:/ 'newActivity' smart constructor.
data Activity = Activity
    {
      -- | Identifies who has access to see this activity.
      access :: (Core.Maybe Acl)
      -- | The person who performed this activity.
    , actor :: (Core.Maybe Activity_Actor)
      -- | Street address where this activity occurred.
    , address :: (Core.Maybe Core.Text)
      -- | Additional content added by the person who shared this activity, applicable only when resharing an activity.
    , annotation :: (Core.Maybe Core.Text)
      -- | If this activity is a crosspost from another system, this property specifies the ID of the original activity.
    , crosspostSource :: (Core.Maybe Core.Text)
      -- | ETag of this response for caching purposes.
    , etag :: (Core.Maybe Core.Text)
      -- | Latitude and longitude where this activity occurred. Format is latitude followed by longitude, space separated.
    , geocode :: (Core.Maybe Core.Text)
      -- | The ID of this activity.
    , id :: (Core.Maybe Core.Text)
      -- | Identifies this resource as an activity. Value: \"plus#activity\".
    , kind :: Core.Text
      -- | The location where this activity occurred.
    , location :: (Core.Maybe Place)
      -- | The object of this activity.
    , object :: (Core.Maybe Activity_Object)
      -- | ID of the place where this activity occurred.
    , placeId :: (Core.Maybe Core.Text)
      -- | Name of the place where this activity occurred.
    , placeName :: (Core.Maybe Core.Text)
      -- | The service provider that initially published this activity.
    , provider :: (Core.Maybe Activity_Provider)
      -- | The time at which this activity was initially published. Formatted as an RFC 3339 timestamp.
    , published :: (Core.Maybe Core.DateTime')
      -- | Radius, in meters, of the region where this activity occurred, centered at the latitude and longitude identified in geocode.
    , radius :: (Core.Maybe Core.Text)
      -- | Title of this activity.
    , title :: (Core.Maybe Core.Text)
      -- | The time at which this activity was last updated. Formatted as an RFC 3339 timestamp.
    , updated :: (Core.Maybe Core.DateTime')
      -- | The link to this activity.
    , url :: (Core.Maybe Core.Text)
      -- | This activity\'s verb, which indicates the action that was performed. Possible values include, but are not limited to, the following values:
      -- - \"post\" - Publish content to the stream. - \"share\" - Reshare an activity.
    , verb :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
newActivity 
    ::  Activity
newActivity =
  Activity
    { access = Core.Nothing
    , actor = Core.Nothing
    , address = Core.Nothing
    , annotation = Core.Nothing
    , crosspostSource = Core.Nothing
    , etag = Core.Nothing
    , geocode = Core.Nothing
    , id = Core.Nothing
    , kind = "plus#activity"
    , location = Core.Nothing
    , object = Core.Nothing
    , placeId = Core.Nothing
    , placeName = Core.Nothing
    , provider = Core.Nothing
    , published = Core.Nothing
    , radius = Core.Nothing
    , title = Core.Nothing
    , updated = Core.Nothing
    , url = Core.Nothing
    , verb = Core.Nothing
    }

instance Core.FromJSON Activity where
        parseJSON
          = Core.withObject "Activity"
              (\ o ->
                 Activity Core.<$>
                   (o Core..:? "access") Core.<*> (o Core..:? "actor")
                     Core.<*> (o Core..:? "address")
                     Core.<*> (o Core..:? "annotation")
                     Core.<*> (o Core..:? "crosspostSource")
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "geocode")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "kind" Core..!= "plus#activity")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "object")
                     Core.<*> (o Core..:? "placeId")
                     Core.<*> (o Core..:? "placeName")
                     Core.<*> (o Core..:? "provider")
                     Core.<*> (o Core..:? "published")
                     Core.<*> (o Core..:? "radius")
                     Core.<*> (o Core..:? "title")
                     Core.<*> (o Core..:? "updated")
                     Core.<*> (o Core..:? "url")
                     Core.<*> (o Core..:? "verb"))

instance Core.ToJSON Activity where
        toJSON Activity{..}
          = Core.object
              (Core.catMaybes
                 [("access" Core..=) Core.<$> access,
                  ("actor" Core..=) Core.<$> actor,
                  ("address" Core..=) Core.<$> address,
                  ("annotation" Core..=) Core.<$> annotation,
                  ("crosspostSource" Core..=) Core.<$> crosspostSource,
                  ("etag" Core..=) Core.<$> etag,
                  ("geocode" Core..=) Core.<$> geocode,
                  ("id" Core..=) Core.<$> id,
                  Core.Just ("kind" Core..= kind),
                  ("location" Core..=) Core.<$> location,
                  ("object" Core..=) Core.<$> object,
                  ("placeId" Core..=) Core.<$> placeId,
                  ("placeName" Core..=) Core.<$> placeName,
                  ("provider" Core..=) Core.<$> provider,
                  ("published" Core..=) Core.<$> published,
                  ("radius" Core..=) Core.<$> radius,
                  ("title" Core..=) Core.<$> title,
                  ("updated" Core..=) Core.<$> updated,
                  ("url" Core..=) Core.<$> url,
                  ("verb" Core..=) Core.<$> verb])


-- | The person who performed this activity.
--
-- /See:/ 'newActivity_Actor' smart constructor.
data Activity_Actor = Activity_Actor
    {
      -- | Actor info specific to particular clients.
      clientSpecificActorInfo :: (Core.Maybe Activity_Actor_ClientSpecificActorInfo)
      -- | The name of the actor, suitable for display.
    , displayName :: (Core.Maybe Core.Text)
      -- | The ID of the actor\'s Person resource.
    , id :: (Core.Maybe Core.Text)
      -- | The image representation of the actor.
    , image :: (Core.Maybe Activity_Actor_Image)
      -- | An object representation of the individual components of name.
    , name :: (Core.Maybe Activity_Actor_Name)
      -- | The link to the actor\'s Google profile.
    , url :: (Core.Maybe Core.Text)
      -- | Verification status of actor.
    , verification :: (Core.Maybe Activity_Actor_Verification)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Actor' with the minimum fields required to make a request.
newActivity_Actor 
    ::  Activity_Actor
newActivity_Actor =
  Activity_Actor
    { clientSpecificActorInfo = Core.Nothing
    , displayName = Core.Nothing
    , id = Core.Nothing
    , image = Core.Nothing
    , name = Core.Nothing
    , url = Core.Nothing
    , verification = Core.Nothing
    }

instance Core.FromJSON Activity_Actor where
        parseJSON
          = Core.withObject "Activity_Actor"
              (\ o ->
                 Activity_Actor Core.<$>
                   (o Core..:? "clientSpecificActorInfo") Core.<*>
                     (o Core..:? "displayName")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "image")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "url")
                     Core.<*> (o Core..:? "verification"))

instance Core.ToJSON Activity_Actor where
        toJSON Activity_Actor{..}
          = Core.object
              (Core.catMaybes
                 [("clientSpecificActorInfo" Core..=) Core.<$>
                    clientSpecificActorInfo,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("id" Core..=) Core.<$> id,
                  ("image" Core..=) Core.<$> image,
                  ("name" Core..=) Core.<$> name,
                  ("url" Core..=) Core.<$> url,
                  ("verification" Core..=) Core.<$> verification])


-- | Actor info specific to particular clients.
--
-- /See:/ 'newActivity_Actor_ClientSpecificActorInfo' smart constructor.
newtype Activity_Actor_ClientSpecificActorInfo = Activity_Actor_ClientSpecificActorInfo
    {
      -- | Actor info specific to YouTube clients.
      youtubeActorInfo :: (Core.Maybe
   Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Actor_ClientSpecificActorInfo' with the minimum fields required to make a request.
newActivity_Actor_ClientSpecificActorInfo 
    ::  Activity_Actor_ClientSpecificActorInfo
newActivity_Actor_ClientSpecificActorInfo =
  Activity_Actor_ClientSpecificActorInfo {youtubeActorInfo = Core.Nothing}

instance Core.FromJSON
           Activity_Actor_ClientSpecificActorInfo
         where
        parseJSON
          = Core.withObject
              "Activity_Actor_ClientSpecificActorInfo"
              (\ o ->
                 Activity_Actor_ClientSpecificActorInfo Core.<$>
                   (o Core..:? "youtubeActorInfo"))

instance Core.ToJSON
           Activity_Actor_ClientSpecificActorInfo
         where
        toJSON Activity_Actor_ClientSpecificActorInfo{..}
          = Core.object
              (Core.catMaybes
                 [("youtubeActorInfo" Core..=) Core.<$>
                    youtubeActorInfo])


-- | Actor info specific to YouTube clients.
--
-- /See:/ 'newActivity_Actor_ClientSpecificActorInfo_YoutubeActorInfo' smart constructor.
newtype Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo = Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    {
      -- | ID of the YouTube channel owned by the Actor.
      channelId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo' with the minimum fields required to make a request.
newActivity_Actor_ClientSpecificActorInfo_YoutubeActorInfo 
    ::  Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo
newActivity_Actor_ClientSpecificActorInfo_YoutubeActorInfo =
  Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    {channelId = Core.Nothing}

instance Core.FromJSON
           Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo
         where
        parseJSON
          = Core.withObject
              "Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo"
              (\ o ->
                 Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo
                   Core.<$> (o Core..:? "channelId"))

instance Core.ToJSON
           Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo
         where
        toJSON
          Activity_Actor_ClientSpecificActorInfo_YoutubeActorInfo{..}
          = Core.object
              (Core.catMaybes
                 [("channelId" Core..=) Core.<$> channelId])


-- | The image representation of the actor.
--
-- /See:/ 'newActivity_Actor_Image' smart constructor.
newtype Activity_Actor_Image = Activity_Actor_Image
    {
      -- | The URL of the actor\'s profile photo. To resize the image and crop it to a square, append the query string ?sz=x, where x is the dimension in pixels of each side.
      url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Actor_Image' with the minimum fields required to make a request.
newActivity_Actor_Image 
    ::  Activity_Actor_Image
newActivity_Actor_Image = Activity_Actor_Image {url = Core.Nothing}

instance Core.FromJSON Activity_Actor_Image where
        parseJSON
          = Core.withObject "Activity_Actor_Image"
              (\ o ->
                 Activity_Actor_Image Core.<$> (o Core..:? "url"))

instance Core.ToJSON Activity_Actor_Image where
        toJSON Activity_Actor_Image{..}
          = Core.object
              (Core.catMaybes [("url" Core..=) Core.<$> url])


-- | An object representation of the individual components of name.
--
-- /See:/ 'newActivity_Actor_Name' smart constructor.
data Activity_Actor_Name = Activity_Actor_Name
    {
      -- | The family name (\"last name\") of the actor.
      familyName :: (Core.Maybe Core.Text)
      -- | The given name (\"first name\") of the actor.
    , givenName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Actor_Name' with the minimum fields required to make a request.
newActivity_Actor_Name 
    ::  Activity_Actor_Name
newActivity_Actor_Name =
  Activity_Actor_Name {familyName = Core.Nothing, givenName = Core.Nothing}

instance Core.FromJSON Activity_Actor_Name where
        parseJSON
          = Core.withObject "Activity_Actor_Name"
              (\ o ->
                 Activity_Actor_Name Core.<$>
                   (o Core..:? "familyName") Core.<*>
                     (o Core..:? "givenName"))

instance Core.ToJSON Activity_Actor_Name where
        toJSON Activity_Actor_Name{..}
          = Core.object
              (Core.catMaybes
                 [("familyName" Core..=) Core.<$> familyName,
                  ("givenName" Core..=) Core.<$> givenName])


-- | Verification status of actor.
--
-- /See:/ 'newActivity_Actor_Verification' smart constructor.
newtype Activity_Actor_Verification = Activity_Actor_Verification
    {
      -- | Verification for one-time or manual processes.
      adHocVerified :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Actor_Verification' with the minimum fields required to make a request.
newActivity_Actor_Verification 
    ::  Activity_Actor_Verification
newActivity_Actor_Verification =
  Activity_Actor_Verification {adHocVerified = Core.Nothing}

instance Core.FromJSON Activity_Actor_Verification
         where
        parseJSON
          = Core.withObject "Activity_Actor_Verification"
              (\ o ->
                 Activity_Actor_Verification Core.<$>
                   (o Core..:? "adHocVerified"))

instance Core.ToJSON Activity_Actor_Verification
         where
        toJSON Activity_Actor_Verification{..}
          = Core.object
              (Core.catMaybes
                 [("adHocVerified" Core..=) Core.<$> adHocVerified])


-- | The object of this activity.
--
-- /See:/ 'newActivity_Object' smart constructor.
data Activity_Object = Activity_Object
    {
      -- | If this activity\'s object is itself another activity, such as when a person reshares an activity, this property specifies the original activity\'s actor.
      actor :: (Core.Maybe Activity_Object_Actor)
      -- | The media objects attached to this activity.
    , attachments :: (Core.Maybe [Activity_Object_AttachmentsItem])
      -- | The HTML-formatted content, which is suitable for display.
    , content :: (Core.Maybe Core.Text)
      -- | The ID of the object. When resharing an activity, this is the ID of the activity that is being reshared.
    , id :: (Core.Maybe Core.Text)
      -- | The type of the object. Possible values include, but are not limited to, the following values:
      -- - \"note\" - Textual content. - \"activity\" - A Google+ activity.
    , objectType :: (Core.Maybe Core.Text)
      -- | The content (text) as provided by the author, which is stored without any HTML formatting. When creating or updating an activity, this value must be supplied as plain text in the request.
    , originalContent :: (Core.Maybe Core.Text)
      -- | People who +1\'d this activity.
    , plusoners :: (Core.Maybe Activity_Object_Plusoners)
      -- | Comments in reply to this activity.
    , replies :: (Core.Maybe Activity_Object_Replies)
      -- | People who reshared this activity.
    , resharers :: (Core.Maybe Activity_Object_Resharers)
      -- | The URL that points to the linked resource.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Object' with the minimum fields required to make a request.
newActivity_Object 
    ::  Activity_Object
newActivity_Object =
  Activity_Object
    { actor = Core.Nothing
    , attachments = Core.Nothing
    , content = Core.Nothing
    , id = Core.Nothing
    , objectType = Core.Nothing
    , originalContent = Core.Nothing
    , plusoners = Core.Nothing
    , replies = Core.Nothing
    , resharers = Core.Nothing
    , url = Core.Nothing
    }

instance Core.FromJSON Activity_Object where
        parseJSON
          = Core.withObject "Activity_Object"
              (\ o ->
                 Activity_Object Core.<$>
                   (o Core..:? "actor") Core.<*>
                     (o Core..:? "attachments" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "content")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "objectType")
                     Core.<*> (o Core..:? "originalContent")
                     Core.<*> (o Core..:? "plusoners")
                     Core.<*> (o Core..:? "replies")
                     Core.<*> (o Core..:? "resharers")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON Activity_Object where
        toJSON Activity_Object{..}
          = Core.object
              (Core.catMaybes
                 [("actor" Core..=) Core.<$> actor,
                  ("attachments" Core..=) Core.<$> attachments,
                  ("content" Core..=) Core.<$> content,
                  ("id" Core..=) Core.<$> id,
                  ("objectType" Core..=) Core.<$> objectType,
                  ("originalContent" Core..=) Core.<$> originalContent,
                  ("plusoners" Core..=) Core.<$> plusoners,
                  ("replies" Core..=) Core.<$> replies,
                  ("resharers" Core..=) Core.<$> resharers,
                  ("url" Core..=) Core.<$> url])


-- | If this activity\'s object is itself another activity, such as when a person reshares an activity, this property specifies the original activity\'s actor.
--
-- /See:/ 'newActivity_Object_Actor' smart constructor.
data Activity_Object_Actor = Activity_Object_Actor
    {
      -- | Actor info specific to particular clients.
      clientSpecificActorInfo :: (Core.Maybe Activity_Object_Actor_ClientSpecificActorInfo)
      -- | The original actor\'s name, which is suitable for display.
    , displayName :: (Core.Maybe Core.Text)
      -- | ID of the original actor.
    , id :: (Core.Maybe Core.Text)
      -- | The image representation of the original actor.
    , image :: (Core.Maybe Activity_Object_Actor_Image)
      -- | A link to the original actor\'s Google profile.
    , url :: (Core.Maybe Core.Text)
      -- | Verification status of actor.
    , verification :: (Core.Maybe Activity_Object_Actor_Verification)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Object_Actor' with the minimum fields required to make a request.
newActivity_Object_Actor 
    ::  Activity_Object_Actor
newActivity_Object_Actor =
  Activity_Object_Actor
    { clientSpecificActorInfo = Core.Nothing
    , displayName = Core.Nothing
    , id = Core.Nothing
    , image = Core.Nothing
    , url = Core.Nothing
    , verification = Core.Nothing
    }

instance Core.FromJSON Activity_Object_Actor where
        parseJSON
          = Core.withObject "Activity_Object_Actor"
              (\ o ->
                 Activity_Object_Actor Core.<$>
                   (o Core..:? "clientSpecificActorInfo") Core.<*>
                     (o Core..:? "displayName")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "image")
                     Core.<*> (o Core..:? "url")
                     Core.<*> (o Core..:? "verification"))

instance Core.ToJSON Activity_Object_Actor where
        toJSON Activity_Object_Actor{..}
          = Core.object
              (Core.catMaybes
                 [("clientSpecificActorInfo" Core..=) Core.<$>
                    clientSpecificActorInfo,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("id" Core..=) Core.<$> id,
                  ("image" Core..=) Core.<$> image,
                  ("url" Core..=) Core.<$> url,
                  ("verification" Core..=) Core.<$> verification])


-- | Actor info specific to particular clients.
--
-- /See:/ 'newActivity_Object_Actor_ClientSpecificActorInfo' smart constructor.
newtype Activity_Object_Actor_ClientSpecificActorInfo = Activity_Object_Actor_ClientSpecificActorInfo
    {
      -- | Actor info specific to YouTube clients.
      youtubeActorInfo :: (Core.Maybe
   Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Object_Actor_ClientSpecificActorInfo' with the minimum fields required to make a request.
newActivity_Object_Actor_ClientSpecificActorInfo 
    ::  Activity_Object_Actor_ClientSpecificActorInfo
newActivity_Object_Actor_ClientSpecificActorInfo =
  Activity_Object_Actor_ClientSpecificActorInfo
    {youtubeActorInfo = Core.Nothing}

instance Core.FromJSON
           Activity_Object_Actor_ClientSpecificActorInfo
         where
        parseJSON
          = Core.withObject
              "Activity_Object_Actor_ClientSpecificActorInfo"
              (\ o ->
                 Activity_Object_Actor_ClientSpecificActorInfo
                   Core.<$> (o Core..:? "youtubeActorInfo"))

instance Core.ToJSON
           Activity_Object_Actor_ClientSpecificActorInfo
         where
        toJSON
          Activity_Object_Actor_ClientSpecificActorInfo{..}
          = Core.object
              (Core.catMaybes
                 [("youtubeActorInfo" Core..=) Core.<$>
                    youtubeActorInfo])


-- | Actor info specific to YouTube clients.
--
-- /See:/ 'newActivity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo' smart constructor.
newtype Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo = Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    {
      -- | ID of the YouTube channel owned by the Actor.
      channelId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo' with the minimum fields required to make a request.
newActivity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo 
    ::  Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo
newActivity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo =
  Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    {channelId = Core.Nothing}

instance Core.FromJSON
           Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo
         where
        parseJSON
          = Core.withObject
              "Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo"
              (\ o ->
                 Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo
                   Core.<$> (o Core..:? "channelId"))

instance Core.ToJSON
           Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo
         where
        toJSON
          Activity_Object_Actor_ClientSpecificActorInfo_YoutubeActorInfo{..}
          = Core.object
              (Core.catMaybes
                 [("channelId" Core..=) Core.<$> channelId])


-- | The image representation of the original actor.
--
-- /See:/ 'newActivity_Object_Actor_Image' smart constructor.
newtype Activity_Object_Actor_Image = Activity_Object_Actor_Image
    {
      -- | A URL that points to a thumbnail photo of the original actor.
      url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Object_Actor_Image' with the minimum fields required to make a request.
newActivity_Object_Actor_Image 
    ::  Activity_Object_Actor_Image
newActivity_Object_Actor_Image =
  Activity_Object_Actor_Image {url = Core.Nothing}

instance Core.FromJSON Activity_Object_Actor_Image
         where
        parseJSON
          = Core.withObject "Activity_Object_Actor_Image"
              (\ o ->
                 Activity_Object_Actor_Image Core.<$>
                   (o Core..:? "url"))

instance Core.ToJSON Activity_Object_Actor_Image
         where
        toJSON Activity_Object_Actor_Image{..}
          = Core.object
              (Core.catMaybes [("url" Core..=) Core.<$> url])


-- | Verification status of actor.
--
-- /See:/ 'newActivity_Object_Actor_Verification' smart constructor.
newtype Activity_Object_Actor_Verification = Activity_Object_Actor_Verification
    {
      -- | Verification for one-time or manual processes.
      adHocVerified :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Object_Actor_Verification' with the minimum fields required to make a request.
newActivity_Object_Actor_Verification 
    ::  Activity_Object_Actor_Verification
newActivity_Object_Actor_Verification =
  Activity_Object_Actor_Verification {adHocVerified = Core.Nothing}

instance Core.FromJSON
           Activity_Object_Actor_Verification
         where
        parseJSON
          = Core.withObject
              "Activity_Object_Actor_Verification"
              (\ o ->
                 Activity_Object_Actor_Verification Core.<$>
                   (o Core..:? "adHocVerified"))

instance Core.ToJSON
           Activity_Object_Actor_Verification
         where
        toJSON Activity_Object_Actor_Verification{..}
          = Core.object
              (Core.catMaybes
                 [("adHocVerified" Core..=) Core.<$> adHocVerified])


--
-- /See:/ 'newActivity_Object_AttachmentsItem' smart constructor.
data Activity_Object_AttachmentsItem = Activity_Object_AttachmentsItem
    {
      -- | If the attachment is an article, this property contains a snippet of text from the article. It can also include descriptions for other types.
      content :: (Core.Maybe Core.Text)
      -- | The title of the attachment, such as a photo caption or an article title.
    , displayName :: (Core.Maybe Core.Text)
      -- | If the attachment is a video, the embeddable link.
    , embed :: (Core.Maybe Activity_Object_AttachmentsItem_Embed)
      -- | The full image URL for photo attachments.
    , fullImage :: (Core.Maybe Activity_Object_AttachmentsItem_FullImage)
      -- | The ID of the attachment.
    , id :: (Core.Maybe Core.Text)
      -- | The preview image for photos or videos.
    , image :: (Core.Maybe Activity_Object_AttachmentsItem_Image)
      -- | The type of media object. Possible values include, but are not limited to, the following values:
      -- - \"photo\" - A photo. - \"album\" - A photo album. - \"video\" - A video. - \"article\" - An article, specified by a link.
    , objectType :: (Core.Maybe Core.Text)
      -- | If the attachment is an album, this property is a list of potential additional thumbnails from the album.
    , thumbnails :: (Core.Maybe [Activity_Object_AttachmentsItem_ThumbnailsItem])
      -- | The link to the attachment, which should be of type text\/html.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Object_AttachmentsItem' with the minimum fields required to make a request.
newActivity_Object_AttachmentsItem 
    ::  Activity_Object_AttachmentsItem
newActivity_Object_AttachmentsItem =
  Activity_Object_AttachmentsItem
    { content = Core.Nothing
    , displayName = Core.Nothing
    , embed = Core.Nothing
    , fullImage = Core.Nothing
    , id = Core.Nothing
    , image = Core.Nothing
    , objectType = Core.Nothing
    , thumbnails = Core.Nothing
    , url = Core.Nothing
    }

instance Core.FromJSON
           Activity_Object_AttachmentsItem
         where
        parseJSON
          = Core.withObject "Activity_Object_AttachmentsItem"
              (\ o ->
                 Activity_Object_AttachmentsItem Core.<$>
                   (o Core..:? "content") Core.<*>
                     (o Core..:? "displayName")
                     Core.<*> (o Core..:? "embed")
                     Core.<*> (o Core..:? "fullImage")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "image")
                     Core.<*> (o Core..:? "objectType")
                     Core.<*>
                     (o Core..:? "thumbnails" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON Activity_Object_AttachmentsItem
         where
        toJSON Activity_Object_AttachmentsItem{..}
          = Core.object
              (Core.catMaybes
                 [("content" Core..=) Core.<$> content,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("embed" Core..=) Core.<$> embed,
                  ("fullImage" Core..=) Core.<$> fullImage,
                  ("id" Core..=) Core.<$> id,
                  ("image" Core..=) Core.<$> image,
                  ("objectType" Core..=) Core.<$> objectType,
                  ("thumbnails" Core..=) Core.<$> thumbnails,
                  ("url" Core..=) Core.<$> url])


-- | If the attachment is a video, the embeddable link.
--
-- /See:/ 'newActivity_Object_AttachmentsItem_Embed' smart constructor.
data Activity_Object_AttachmentsItem_Embed = Activity_Object_AttachmentsItem_Embed
    {
      -- | Media type of the link.
      type' :: (Core.Maybe Core.Text)
      -- | URL of the link.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Object_AttachmentsItem_Embed' with the minimum fields required to make a request.
newActivity_Object_AttachmentsItem_Embed 
    ::  Activity_Object_AttachmentsItem_Embed
newActivity_Object_AttachmentsItem_Embed =
  Activity_Object_AttachmentsItem_Embed
    {type' = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON
           Activity_Object_AttachmentsItem_Embed
         where
        parseJSON
          = Core.withObject
              "Activity_Object_AttachmentsItem_Embed"
              (\ o ->
                 Activity_Object_AttachmentsItem_Embed Core.<$>
                   (o Core..:? "type") Core.<*> (o Core..:? "url"))

instance Core.ToJSON
           Activity_Object_AttachmentsItem_Embed
         where
        toJSON Activity_Object_AttachmentsItem_Embed{..}
          = Core.object
              (Core.catMaybes
                 [("type" Core..=) Core.<$> type',
                  ("url" Core..=) Core.<$> url])


-- | The full image URL for photo attachments.
--
-- /See:/ 'newActivity_Object_AttachmentsItem_FullImage' smart constructor.
data Activity_Object_AttachmentsItem_FullImage = Activity_Object_AttachmentsItem_FullImage
    {
      -- | The height, in pixels, of the linked resource.
      height :: (Core.Maybe Core.Word32)
      -- | Media type of the link.
    , type' :: (Core.Maybe Core.Text)
      -- | URL of the image.
    , url :: (Core.Maybe Core.Text)
      -- | The width, in pixels, of the linked resource.
    , width :: (Core.Maybe Core.Word32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Object_AttachmentsItem_FullImage' with the minimum fields required to make a request.
newActivity_Object_AttachmentsItem_FullImage 
    ::  Activity_Object_AttachmentsItem_FullImage
newActivity_Object_AttachmentsItem_FullImage =
  Activity_Object_AttachmentsItem_FullImage
    { height = Core.Nothing
    , type' = Core.Nothing
    , url = Core.Nothing
    , width = Core.Nothing
    }

instance Core.FromJSON
           Activity_Object_AttachmentsItem_FullImage
         where
        parseJSON
          = Core.withObject
              "Activity_Object_AttachmentsItem_FullImage"
              (\ o ->
                 Activity_Object_AttachmentsItem_FullImage Core.<$>
                   (o Core..:? "height") Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "url")
                     Core.<*> (o Core..:? "width"))

instance Core.ToJSON
           Activity_Object_AttachmentsItem_FullImage
         where
        toJSON Activity_Object_AttachmentsItem_FullImage{..}
          = Core.object
              (Core.catMaybes
                 [("height" Core..=) Core.<$> height,
                  ("type" Core..=) Core.<$> type',
                  ("url" Core..=) Core.<$> url,
                  ("width" Core..=) Core.<$> width])


-- | The preview image for photos or videos.
--
-- /See:/ 'newActivity_Object_AttachmentsItem_Image' smart constructor.
data Activity_Object_AttachmentsItem_Image = Activity_Object_AttachmentsItem_Image
    {
      -- | The height, in pixels, of the linked resource.
      height :: (Core.Maybe Core.Word32)
      -- | Media type of the link.
    , type' :: (Core.Maybe Core.Text)
      -- | Image URL.
    , url :: (Core.Maybe Core.Text)
      -- | The width, in pixels, of the linked resource.
    , width :: (Core.Maybe Core.Word32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Object_AttachmentsItem_Image' with the minimum fields required to make a request.
newActivity_Object_AttachmentsItem_Image 
    ::  Activity_Object_AttachmentsItem_Image
newActivity_Object_AttachmentsItem_Image =
  Activity_Object_AttachmentsItem_Image
    { height = Core.Nothing
    , type' = Core.Nothing
    , url = Core.Nothing
    , width = Core.Nothing
    }

instance Core.FromJSON
           Activity_Object_AttachmentsItem_Image
         where
        parseJSON
          = Core.withObject
              "Activity_Object_AttachmentsItem_Image"
              (\ o ->
                 Activity_Object_AttachmentsItem_Image Core.<$>
                   (o Core..:? "height") Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "url")
                     Core.<*> (o Core..:? "width"))

instance Core.ToJSON
           Activity_Object_AttachmentsItem_Image
         where
        toJSON Activity_Object_AttachmentsItem_Image{..}
          = Core.object
              (Core.catMaybes
                 [("height" Core..=) Core.<$> height,
                  ("type" Core..=) Core.<$> type',
                  ("url" Core..=) Core.<$> url,
                  ("width" Core..=) Core.<$> width])


--
-- /See:/ 'newActivity_Object_AttachmentsItem_ThumbnailsItem' smart constructor.
data Activity_Object_AttachmentsItem_ThumbnailsItem = Activity_Object_AttachmentsItem_ThumbnailsItem
    {
      -- | Potential name of the thumbnail.
      description :: (Core.Maybe Core.Text)
      -- | Image resource.
    , image :: (Core.Maybe Activity_Object_AttachmentsItem_ThumbnailsItem_Image)
      -- | URL of the webpage containing the image.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Object_AttachmentsItem_ThumbnailsItem' with the minimum fields required to make a request.
newActivity_Object_AttachmentsItem_ThumbnailsItem 
    ::  Activity_Object_AttachmentsItem_ThumbnailsItem
newActivity_Object_AttachmentsItem_ThumbnailsItem =
  Activity_Object_AttachmentsItem_ThumbnailsItem
    {description = Core.Nothing, image = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON
           Activity_Object_AttachmentsItem_ThumbnailsItem
         where
        parseJSON
          = Core.withObject
              "Activity_Object_AttachmentsItem_ThumbnailsItem"
              (\ o ->
                 Activity_Object_AttachmentsItem_ThumbnailsItem
                   Core.<$>
                   (o Core..:? "description") Core.<*>
                     (o Core..:? "image")
                     Core.<*> (o Core..:? "url"))

instance Core.ToJSON
           Activity_Object_AttachmentsItem_ThumbnailsItem
         where
        toJSON
          Activity_Object_AttachmentsItem_ThumbnailsItem{..}
          = Core.object
              (Core.catMaybes
                 [("description" Core..=) Core.<$> description,
                  ("image" Core..=) Core.<$> image,
                  ("url" Core..=) Core.<$> url])


-- | Image resource.
--
-- /See:/ 'newActivity_Object_AttachmentsItem_ThumbnailsItem_Image' smart constructor.
data Activity_Object_AttachmentsItem_ThumbnailsItem_Image = Activity_Object_AttachmentsItem_ThumbnailsItem_Image
    {
      -- | The height, in pixels, of the linked resource.
      height :: (Core.Maybe Core.Word32)
      -- | Media type of the link.
    , type' :: (Core.Maybe Core.Text)
      -- | Image url.
    , url :: (Core.Maybe Core.Text)
      -- | The width, in pixels, of the linked resource.
    , width :: (Core.Maybe Core.Word32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Object_AttachmentsItem_ThumbnailsItem_Image' with the minimum fields required to make a request.
newActivity_Object_AttachmentsItem_ThumbnailsItem_Image 
    ::  Activity_Object_AttachmentsItem_ThumbnailsItem_Image
newActivity_Object_AttachmentsItem_ThumbnailsItem_Image =
  Activity_Object_AttachmentsItem_ThumbnailsItem_Image
    { height = Core.Nothing
    , type' = Core.Nothing
    , url = Core.Nothing
    , width = Core.Nothing
    }

instance Core.FromJSON
           Activity_Object_AttachmentsItem_ThumbnailsItem_Image
         where
        parseJSON
          = Core.withObject
              "Activity_Object_AttachmentsItem_ThumbnailsItem_Image"
              (\ o ->
                 Activity_Object_AttachmentsItem_ThumbnailsItem_Image
                   Core.<$>
                   (o Core..:? "height") Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "url")
                     Core.<*> (o Core..:? "width"))

instance Core.ToJSON
           Activity_Object_AttachmentsItem_ThumbnailsItem_Image
         where
        toJSON
          Activity_Object_AttachmentsItem_ThumbnailsItem_Image{..}
          = Core.object
              (Core.catMaybes
                 [("height" Core..=) Core.<$> height,
                  ("type" Core..=) Core.<$> type',
                  ("url" Core..=) Core.<$> url,
                  ("width" Core..=) Core.<$> width])


-- | People who +1\'d this activity.
--
-- /See:/ 'newActivity_Object_Plusoners' smart constructor.
data Activity_Object_Plusoners = Activity_Object_Plusoners
    {
      -- | The URL for the collection of people who +1\'d this activity.
      selfLink :: (Core.Maybe Core.Text)
      -- | Total number of people who +1\'d this activity.
    , totalItems :: (Core.Maybe Core.Word32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Object_Plusoners' with the minimum fields required to make a request.
newActivity_Object_Plusoners 
    ::  Activity_Object_Plusoners
newActivity_Object_Plusoners =
  Activity_Object_Plusoners {selfLink = Core.Nothing, totalItems = Core.Nothing}

instance Core.FromJSON Activity_Object_Plusoners
         where
        parseJSON
          = Core.withObject "Activity_Object_Plusoners"
              (\ o ->
                 Activity_Object_Plusoners Core.<$>
                   (o Core..:? "selfLink") Core.<*>
                     (o Core..:? "totalItems"))

instance Core.ToJSON Activity_Object_Plusoners where
        toJSON Activity_Object_Plusoners{..}
          = Core.object
              (Core.catMaybes
                 [("selfLink" Core..=) Core.<$> selfLink,
                  ("totalItems" Core..=) Core.<$> totalItems])


-- | Comments in reply to this activity.
--
-- /See:/ 'newActivity_Object_Replies' smart constructor.
data Activity_Object_Replies = Activity_Object_Replies
    {
      -- | The URL for the collection of comments in reply to this activity.
      selfLink :: (Core.Maybe Core.Text)
      -- | Total number of comments on this activity.
    , totalItems :: (Core.Maybe Core.Word32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Object_Replies' with the minimum fields required to make a request.
newActivity_Object_Replies 
    ::  Activity_Object_Replies
newActivity_Object_Replies =
  Activity_Object_Replies {selfLink = Core.Nothing, totalItems = Core.Nothing}

instance Core.FromJSON Activity_Object_Replies where
        parseJSON
          = Core.withObject "Activity_Object_Replies"
              (\ o ->
                 Activity_Object_Replies Core.<$>
                   (o Core..:? "selfLink") Core.<*>
                     (o Core..:? "totalItems"))

instance Core.ToJSON Activity_Object_Replies where
        toJSON Activity_Object_Replies{..}
          = Core.object
              (Core.catMaybes
                 [("selfLink" Core..=) Core.<$> selfLink,
                  ("totalItems" Core..=) Core.<$> totalItems])


-- | People who reshared this activity.
--
-- /See:/ 'newActivity_Object_Resharers' smart constructor.
data Activity_Object_Resharers = Activity_Object_Resharers
    {
      -- | The URL for the collection of resharers.
      selfLink :: (Core.Maybe Core.Text)
      -- | Total number of people who reshared this activity.
    , totalItems :: (Core.Maybe Core.Word32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Object_Resharers' with the minimum fields required to make a request.
newActivity_Object_Resharers 
    ::  Activity_Object_Resharers
newActivity_Object_Resharers =
  Activity_Object_Resharers {selfLink = Core.Nothing, totalItems = Core.Nothing}

instance Core.FromJSON Activity_Object_Resharers
         where
        parseJSON
          = Core.withObject "Activity_Object_Resharers"
              (\ o ->
                 Activity_Object_Resharers Core.<$>
                   (o Core..:? "selfLink") Core.<*>
                     (o Core..:? "totalItems"))

instance Core.ToJSON Activity_Object_Resharers where
        toJSON Activity_Object_Resharers{..}
          = Core.object
              (Core.catMaybes
                 [("selfLink" Core..=) Core.<$> selfLink,
                  ("totalItems" Core..=) Core.<$> totalItems])


-- | The service provider that initially published this activity.
--
-- /See:/ 'newActivity_Provider' smart constructor.
newtype Activity_Provider = Activity_Provider
    {
      -- | Name of the service provider.
      title :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Activity_Provider' with the minimum fields required to make a request.
newActivity_Provider 
    ::  Activity_Provider
newActivity_Provider = Activity_Provider {title = Core.Nothing}

instance Core.FromJSON Activity_Provider where
        parseJSON
          = Core.withObject "Activity_Provider"
              (\ o ->
                 Activity_Provider Core.<$> (o Core..:? "title"))

instance Core.ToJSON Activity_Provider where
        toJSON Activity_Provider{..}
          = Core.object
              (Core.catMaybes [("title" Core..=) Core.<$> title])


--
-- /See:/ 'newActivityFeed' smart constructor.
data ActivityFeed = ActivityFeed
    {
      -- | ETag of this response for caching purposes.
      etag :: (Core.Maybe Core.Text)
      -- | The ID of this collection of activities. Deprecated.
    , id :: (Core.Maybe Core.Text)
      -- | The activities in this page of results.
    , items :: (Core.Maybe [Activity])
      -- | Identifies this resource as a collection of activities. Value: \"plus#activityFeed\".
    , kind :: Core.Text
      -- | Link to the next page of activities.
    , nextLink :: (Core.Maybe Core.Text)
      -- | The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | Link to this activity resource.
    , selfLink :: (Core.Maybe Core.Text)
      -- | The title of this collection of activities, which is a truncated portion of the content.
    , title :: (Core.Maybe Core.Text)
      -- | The time at which this collection of activities was last updated. Formatted as an RFC 3339 timestamp.
    , updated :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'ActivityFeed' with the minimum fields required to make a request.
newActivityFeed 
    ::  ActivityFeed
newActivityFeed =
  ActivityFeed
    { etag = Core.Nothing
    , id = Core.Nothing
    , items = Core.Nothing
    , kind = "plus#activityFeed"
    , nextLink = Core.Nothing
    , nextPageToken = Core.Nothing
    , selfLink = Core.Nothing
    , title = Core.Nothing
    , updated = Core.Nothing
    }

instance Core.FromJSON ActivityFeed where
        parseJSON
          = Core.withObject "ActivityFeed"
              (\ o ->
                 ActivityFeed Core.<$>
                   (o Core..:? "etag") Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "items" Core..!= Core.mempty)
                     Core.<*>
                     (o Core..:? "kind" Core..!= "plus#activityFeed")
                     Core.<*> (o Core..:? "nextLink")
                     Core.<*> (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "selfLink")
                     Core.<*> (o Core..:? "title")
                     Core.<*> (o Core..:? "updated"))

instance Core.ToJSON ActivityFeed where
        toJSON ActivityFeed{..}
          = Core.object
              (Core.catMaybes
                 [("etag" Core..=) Core.<$> etag,
                  ("id" Core..=) Core.<$> id,
                  ("items" Core..=) Core.<$> items,
                  Core.Just ("kind" Core..= kind),
                  ("nextLink" Core..=) Core.<$> nextLink,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("selfLink" Core..=) Core.<$> selfLink,
                  ("title" Core..=) Core.<$> title,
                  ("updated" Core..=) Core.<$> updated])


--
-- /See:/ 'newComment' smart constructor.
data Comment = Comment
    {
      -- | The person who posted this comment.
      actor :: (Core.Maybe Comment_Actor)
      -- | ETag of this response for caching purposes.
    , etag :: (Core.Maybe Core.Text)
      -- | The ID of this comment.
    , id :: (Core.Maybe Core.Text)
      -- | The activity this comment replied to.
    , inReplyTo :: (Core.Maybe [Comment_InReplyToItem])
      -- | Identifies this resource as a comment. Value: \"plus#comment\".
    , kind :: Core.Text
      -- | The object of this comment.
    , object :: (Core.Maybe Comment_Object)
      -- | People who +1\'d this comment.
    , plusoners :: (Core.Maybe Comment_Plusoners)
      -- | The time at which this comment was initially published. Formatted as an RFC 3339 timestamp.
    , published :: (Core.Maybe Core.DateTime')
      -- | Link to this comment resource.
    , selfLink :: (Core.Maybe Core.Text)
      -- | The time at which this comment was last updated. Formatted as an RFC 3339 timestamp.
    , updated :: (Core.Maybe Core.DateTime')
      -- | This comment\'s verb, indicating what action was performed. Possible values are:
      -- - \"post\" - Publish content to the stream.
    , verb :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment' with the minimum fields required to make a request.
newComment 
    ::  Comment
newComment =
  Comment
    { actor = Core.Nothing
    , etag = Core.Nothing
    , id = Core.Nothing
    , inReplyTo = Core.Nothing
    , kind = "plus#comment"
    , object = Core.Nothing
    , plusoners = Core.Nothing
    , published = Core.Nothing
    , selfLink = Core.Nothing
    , updated = Core.Nothing
    , verb = "post"
    }

instance Core.FromJSON Comment where
        parseJSON
          = Core.withObject "Comment"
              (\ o ->
                 Comment Core.<$>
                   (o Core..:? "actor") Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "id")
                     Core.<*>
                     (o Core..:? "inReplyTo" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "kind" Core..!= "plus#comment")
                     Core.<*> (o Core..:? "object")
                     Core.<*> (o Core..:? "plusoners")
                     Core.<*> (o Core..:? "published")
                     Core.<*> (o Core..:? "selfLink")
                     Core.<*> (o Core..:? "updated")
                     Core.<*> (o Core..:? "verb" Core..!= "post"))

instance Core.ToJSON Comment where
        toJSON Comment{..}
          = Core.object
              (Core.catMaybes
                 [("actor" Core..=) Core.<$> actor,
                  ("etag" Core..=) Core.<$> etag,
                  ("id" Core..=) Core.<$> id,
                  ("inReplyTo" Core..=) Core.<$> inReplyTo,
                  Core.Just ("kind" Core..= kind),
                  ("object" Core..=) Core.<$> object,
                  ("plusoners" Core..=) Core.<$> plusoners,
                  ("published" Core..=) Core.<$> published,
                  ("selfLink" Core..=) Core.<$> selfLink,
                  ("updated" Core..=) Core.<$> updated,
                  Core.Just ("verb" Core..= verb)])


-- | The person who posted this comment.
--
-- /See:/ 'newComment_Actor' smart constructor.
data Comment_Actor = Comment_Actor
    {
      -- | Actor info specific to particular clients.
      clientSpecificActorInfo :: (Core.Maybe Comment_Actor_ClientSpecificActorInfo)
      -- | The name of this actor, suitable for display.
    , displayName :: (Core.Maybe Core.Text)
      -- | The ID of the actor.
    , id :: (Core.Maybe Core.Text)
      -- | The image representation of this actor.
    , image :: (Core.Maybe Comment_Actor_Image)
      -- | A link to the Person resource for this actor.
    , url :: (Core.Maybe Core.Text)
      -- | Verification status of actor.
    , verification :: (Core.Maybe Comment_Actor_Verification)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment_Actor' with the minimum fields required to make a request.
newComment_Actor 
    ::  Comment_Actor
newComment_Actor =
  Comment_Actor
    { clientSpecificActorInfo = Core.Nothing
    , displayName = Core.Nothing
    , id = Core.Nothing
    , image = Core.Nothing
    , url = Core.Nothing
    , verification = Core.Nothing
    }

instance Core.FromJSON Comment_Actor where
        parseJSON
          = Core.withObject "Comment_Actor"
              (\ o ->
                 Comment_Actor Core.<$>
                   (o Core..:? "clientSpecificActorInfo") Core.<*>
                     (o Core..:? "displayName")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "image")
                     Core.<*> (o Core..:? "url")
                     Core.<*> (o Core..:? "verification"))

instance Core.ToJSON Comment_Actor where
        toJSON Comment_Actor{..}
          = Core.object
              (Core.catMaybes
                 [("clientSpecificActorInfo" Core..=) Core.<$>
                    clientSpecificActorInfo,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("id" Core..=) Core.<$> id,
                  ("image" Core..=) Core.<$> image,
                  ("url" Core..=) Core.<$> url,
                  ("verification" Core..=) Core.<$> verification])


-- | Actor info specific to particular clients.
--
-- /See:/ 'newComment_Actor_ClientSpecificActorInfo' smart constructor.
newtype Comment_Actor_ClientSpecificActorInfo = Comment_Actor_ClientSpecificActorInfo
    {
      -- | Actor info specific to YouTube clients.
      youtubeActorInfo :: (Core.Maybe Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment_Actor_ClientSpecificActorInfo' with the minimum fields required to make a request.
newComment_Actor_ClientSpecificActorInfo 
    ::  Comment_Actor_ClientSpecificActorInfo
newComment_Actor_ClientSpecificActorInfo =
  Comment_Actor_ClientSpecificActorInfo {youtubeActorInfo = Core.Nothing}

instance Core.FromJSON
           Comment_Actor_ClientSpecificActorInfo
         where
        parseJSON
          = Core.withObject
              "Comment_Actor_ClientSpecificActorInfo"
              (\ o ->
                 Comment_Actor_ClientSpecificActorInfo Core.<$>
                   (o Core..:? "youtubeActorInfo"))

instance Core.ToJSON
           Comment_Actor_ClientSpecificActorInfo
         where
        toJSON Comment_Actor_ClientSpecificActorInfo{..}
          = Core.object
              (Core.catMaybes
                 [("youtubeActorInfo" Core..=) Core.<$>
                    youtubeActorInfo])


-- | Actor info specific to YouTube clients.
--
-- /See:/ 'newComment_Actor_ClientSpecificActorInfo_YoutubeActorInfo' smart constructor.
newtype Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo = Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    {
      -- | ID of the YouTube channel owned by the Actor.
      channelId :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo' with the minimum fields required to make a request.
newComment_Actor_ClientSpecificActorInfo_YoutubeActorInfo 
    ::  Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo
newComment_Actor_ClientSpecificActorInfo_YoutubeActorInfo =
  Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo
    {channelId = Core.Nothing}

instance Core.FromJSON
           Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo
         where
        parseJSON
          = Core.withObject
              "Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo"
              (\ o ->
                 Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo
                   Core.<$> (o Core..:? "channelId"))

instance Core.ToJSON
           Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo
         where
        toJSON
          Comment_Actor_ClientSpecificActorInfo_YoutubeActorInfo{..}
          = Core.object
              (Core.catMaybes
                 [("channelId" Core..=) Core.<$> channelId])


-- | The image representation of this actor.
--
-- /See:/ 'newComment_Actor_Image' smart constructor.
newtype Comment_Actor_Image = Comment_Actor_Image
    {
      -- | The URL of the actor\'s profile photo. To resize the image and crop it to a square, append the query string ?sz=x, where x is the dimension in pixels of each side.
      url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment_Actor_Image' with the minimum fields required to make a request.
newComment_Actor_Image 
    ::  Comment_Actor_Image
newComment_Actor_Image = Comment_Actor_Image {url = Core.Nothing}

instance Core.FromJSON Comment_Actor_Image where
        parseJSON
          = Core.withObject "Comment_Actor_Image"
              (\ o ->
                 Comment_Actor_Image Core.<$> (o Core..:? "url"))

instance Core.ToJSON Comment_Actor_Image where
        toJSON Comment_Actor_Image{..}
          = Core.object
              (Core.catMaybes [("url" Core..=) Core.<$> url])


-- | Verification status of actor.
--
-- /See:/ 'newComment_Actor_Verification' smart constructor.
newtype Comment_Actor_Verification = Comment_Actor_Verification
    {
      -- | Verification for one-time or manual processes.
      adHocVerified :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment_Actor_Verification' with the minimum fields required to make a request.
newComment_Actor_Verification 
    ::  Comment_Actor_Verification
newComment_Actor_Verification =
  Comment_Actor_Verification {adHocVerified = Core.Nothing}

instance Core.FromJSON Comment_Actor_Verification
         where
        parseJSON
          = Core.withObject "Comment_Actor_Verification"
              (\ o ->
                 Comment_Actor_Verification Core.<$>
                   (o Core..:? "adHocVerified"))

instance Core.ToJSON Comment_Actor_Verification where
        toJSON Comment_Actor_Verification{..}
          = Core.object
              (Core.catMaybes
                 [("adHocVerified" Core..=) Core.<$> adHocVerified])


--
-- /See:/ 'newComment_InReplyToItem' smart constructor.
data Comment_InReplyToItem = Comment_InReplyToItem
    {
      -- | The ID of the activity.
      id :: (Core.Maybe Core.Text)
      -- | The URL of the activity.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment_InReplyToItem' with the minimum fields required to make a request.
newComment_InReplyToItem 
    ::  Comment_InReplyToItem
newComment_InReplyToItem =
  Comment_InReplyToItem {id = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON Comment_InReplyToItem where
        parseJSON
          = Core.withObject "Comment_InReplyToItem"
              (\ o ->
                 Comment_InReplyToItem Core.<$>
                   (o Core..:? "id") Core.<*> (o Core..:? "url"))

instance Core.ToJSON Comment_InReplyToItem where
        toJSON Comment_InReplyToItem{..}
          = Core.object
              (Core.catMaybes
                 [("id" Core..=) Core.<$> id,
                  ("url" Core..=) Core.<$> url])


-- | The object of this comment.
--
-- /See:/ 'newComment_Object' smart constructor.
data Comment_Object = Comment_Object
    {
      -- | The HTML-formatted content, suitable for display.
      content :: (Core.Maybe Core.Text)
      -- | The object type of this comment. Possible values are:
      -- - \"comment\" - A comment in reply to an activity.
    , objectType :: Core.Text
      -- | The content (text) as provided by the author, stored without any HTML formatting. When creating or updating a comment, this value must be supplied as plain text in the request.
    , originalContent :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment_Object' with the minimum fields required to make a request.
newComment_Object 
    ::  Comment_Object
newComment_Object =
  Comment_Object
    { content = Core.Nothing
    , objectType = "comment"
    , originalContent = Core.Nothing
    }

instance Core.FromJSON Comment_Object where
        parseJSON
          = Core.withObject "Comment_Object"
              (\ o ->
                 Comment_Object Core.<$>
                   (o Core..:? "content") Core.<*>
                     (o Core..:? "objectType" Core..!= "comment")
                     Core.<*> (o Core..:? "originalContent"))

instance Core.ToJSON Comment_Object where
        toJSON Comment_Object{..}
          = Core.object
              (Core.catMaybes
                 [("content" Core..=) Core.<$> content,
                  Core.Just ("objectType" Core..= objectType),
                  ("originalContent" Core..=) Core.<$>
                    originalContent])


-- | People who +1\'d this comment.
--
-- /See:/ 'newComment_Plusoners' smart constructor.
newtype Comment_Plusoners = Comment_Plusoners
    {
      -- | Total number of people who +1\'d this comment.
      totalItems :: (Core.Maybe Core.Word32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Comment_Plusoners' with the minimum fields required to make a request.
newComment_Plusoners 
    ::  Comment_Plusoners
newComment_Plusoners = Comment_Plusoners {totalItems = Core.Nothing}

instance Core.FromJSON Comment_Plusoners where
        parseJSON
          = Core.withObject "Comment_Plusoners"
              (\ o ->
                 Comment_Plusoners Core.<$> (o Core..:? "totalItems"))

instance Core.ToJSON Comment_Plusoners where
        toJSON Comment_Plusoners{..}
          = Core.object
              (Core.catMaybes
                 [("totalItems" Core..=) Core.<$> totalItems])


--
-- /See:/ 'newCommentFeed' smart constructor.
data CommentFeed = CommentFeed
    {
      -- | ETag of this response for caching purposes.
      etag :: (Core.Maybe Core.Text)
      -- | The ID of this collection of comments.
    , id :: (Core.Maybe Core.Text)
      -- | The comments in this page of results.
    , items :: (Core.Maybe [Comment])
      -- | Identifies this resource as a collection of comments. Value: \"plus#commentFeed\".
    , kind :: Core.Text
      -- | Link to the next page of activities.
    , nextLink :: (Core.Maybe Core.Text)
      -- | The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | The title of this collection of comments.
    , title :: (Core.Maybe Core.Text)
      -- | The time at which this collection of comments was last updated. Formatted as an RFC 3339 timestamp.
    , updated :: (Core.Maybe Core.DateTime')
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'CommentFeed' with the minimum fields required to make a request.
newCommentFeed 
    ::  CommentFeed
newCommentFeed =
  CommentFeed
    { etag = Core.Nothing
    , id = Core.Nothing
    , items = Core.Nothing
    , kind = "plus#commentFeed"
    , nextLink = Core.Nothing
    , nextPageToken = Core.Nothing
    , title = Core.Nothing
    , updated = Core.Nothing
    }

instance Core.FromJSON CommentFeed where
        parseJSON
          = Core.withObject "CommentFeed"
              (\ o ->
                 CommentFeed Core.<$>
                   (o Core..:? "etag") Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "items" Core..!= Core.mempty)
                     Core.<*>
                     (o Core..:? "kind" Core..!= "plus#commentFeed")
                     Core.<*> (o Core..:? "nextLink")
                     Core.<*> (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "title")
                     Core.<*> (o Core..:? "updated"))

instance Core.ToJSON CommentFeed where
        toJSON CommentFeed{..}
          = Core.object
              (Core.catMaybes
                 [("etag" Core..=) Core.<$> etag,
                  ("id" Core..=) Core.<$> id,
                  ("items" Core..=) Core.<$> items,
                  Core.Just ("kind" Core..= kind),
                  ("nextLink" Core..=) Core.<$> nextLink,
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("title" Core..=) Core.<$> title,
                  ("updated" Core..=) Core.<$> updated])


--
-- /See:/ 'newPeopleFeed' smart constructor.
data PeopleFeed = PeopleFeed
    {
      -- | ETag of this response for caching purposes.
      etag :: (Core.Maybe Core.Text)
      -- | The people in this page of results. Each item includes the id, displayName, image, and url for the person. To retrieve additional profile data, see the people.get method.
    , items :: (Core.Maybe [Person])
      -- | Identifies this resource as a collection of people. Value: \"plus#peopleFeed\".
    , kind :: Core.Text
      -- | The continuation token, which is used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
    , nextPageToken :: (Core.Maybe Core.Text)
      -- | Link to this resource.
    , selfLink :: (Core.Maybe Core.Text)
      -- | The title of this collection of people.
    , title :: (Core.Maybe Core.Text)
      -- | The total number of people available in this list. The number of people in a response might be smaller due to paging. This might not be set for all collections.
    , totalItems :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PeopleFeed' with the minimum fields required to make a request.
newPeopleFeed 
    ::  PeopleFeed
newPeopleFeed =
  PeopleFeed
    { etag = Core.Nothing
    , items = Core.Nothing
    , kind = "plus#peopleFeed"
    , nextPageToken = Core.Nothing
    , selfLink = Core.Nothing
    , title = Core.Nothing
    , totalItems = Core.Nothing
    }

instance Core.FromJSON PeopleFeed where
        parseJSON
          = Core.withObject "PeopleFeed"
              (\ o ->
                 PeopleFeed Core.<$>
                   (o Core..:? "etag") Core.<*>
                     (o Core..:? "items" Core..!= Core.mempty)
                     Core.<*>
                     (o Core..:? "kind" Core..!= "plus#peopleFeed")
                     Core.<*> (o Core..:? "nextPageToken")
                     Core.<*> (o Core..:? "selfLink")
                     Core.<*> (o Core..:? "title")
                     Core.<*> (o Core..:? "totalItems"))

instance Core.ToJSON PeopleFeed where
        toJSON PeopleFeed{..}
          = Core.object
              (Core.catMaybes
                 [("etag" Core..=) Core.<$> etag,
                  ("items" Core..=) Core.<$> items,
                  Core.Just ("kind" Core..= kind),
                  ("nextPageToken" Core..=) Core.<$> nextPageToken,
                  ("selfLink" Core..=) Core.<$> selfLink,
                  ("title" Core..=) Core.<$> title,
                  ("totalItems" Core..=) Core.<$> totalItems])


--
-- /See:/ 'newPerson' smart constructor.
data Person = Person
    {
      -- | A short biography for this person.
      aboutMe :: (Core.Maybe Core.Text)
      -- | The age range of the person. Valid ranges are 17 or younger, 18 to 20, and 21 or older. Age is determined from the user\'s birthday using Western age reckoning.
    , ageRange :: (Core.Maybe Person_AgeRange)
      -- | The person\'s date of birth, represented as YYYY-MM-DD.
    , birthday :: (Core.Maybe Core.Text)
      -- | The \"bragging rights\" line of this person.
    , braggingRights :: (Core.Maybe Core.Text)
      -- | For followers who are visible, the number of people who have added this person or page to a circle.
    , circledByCount :: (Core.Maybe Core.Int32)
      -- | The cover photo content.
    , cover :: (Core.Maybe Person_Cover)
      -- | (this field is not currently used)
    , currentLocation :: (Core.Maybe Core.Text)
      -- | The name of this person, which is suitable for display.
    , displayName :: (Core.Maybe Core.Text)
      -- | The hosted domain name for the user\'s Google Apps account. For instance, example.com. The plus.profile.emails.read or email scope is needed to get this domain name.
    , domain :: (Core.Maybe Core.Text)
      -- | A list of email addresses that this person has, including their Google account email address, and the public verified email addresses on their Google+ profile. The plus.profile.emails.read scope is needed to retrieve these email addresses, or the email scope can be used to retrieve just the Google account email address.
    , emails :: (Core.Maybe [Person_EmailsItem])
      -- | ETag of this response for caching purposes.
    , etag :: (Core.Maybe Core.Text)
      -- | The person\'s gender. Possible values include, but are not limited to, the following values:
      -- - \"male\" - Male gender. - \"female\" - Female gender. - \"other\" - Other.
    , gender :: (Core.Maybe Core.Text)
      -- | The ID of this person.
    , id :: (Core.Maybe Core.Text)
      -- | The representation of the person\'s profile photo.
    , image :: (Core.Maybe Person_Image)
      -- | Whether this user has signed up for Google+.
    , isPlusUser :: (Core.Maybe Core.Bool)
      -- | Identifies this resource as a person. Value: \"plus#person\".
    , kind :: Core.Text
      -- | The user\'s preferred language for rendering.
    , language :: (Core.Maybe Core.Text)
      -- | An object representation of the individual components of a person\'s name.
    , name :: (Core.Maybe Person_Name)
      -- | The nickname of this person.
    , nickname :: (Core.Maybe Core.Text)
      -- | Type of person within Google+. Possible values include, but are not limited to, the following values:
      -- - \"person\" - represents an actual person. - \"page\" - represents a page.
    , objectType :: (Core.Maybe Core.Text)
      -- | The occupation of this person.
    , occupation :: (Core.Maybe Core.Text)
      -- | A list of current or past organizations with which this person is associated.
    , organizations :: (Core.Maybe [Person_OrganizationsItem])
      -- | A list of places where this person has lived.
    , placesLived :: (Core.Maybe [Person_PlacesLivedItem])
      -- | If a Google+ Page, the number of people who have +1\'d this page.
    , plusOneCount :: (Core.Maybe Core.Int32)
      -- | The person\'s relationship status. Possible values include, but are not limited to, the following values:
      -- - \"single\" - Person is single. - \"in/a/relationship\" - Person is in a relationship. - \"engaged\" - Person is engaged. - \"married\" - Person is married. - \"its/complicated\" - The relationship is complicated. - \"open/relationship\" - Person is in an open relationship. - \"widowed\" - Person is widowed. - \"in/domestic/partnership\" - Person is in a domestic partnership. - \"in/civil/union\" - Person is in a civil union.
    , relationshipStatus :: (Core.Maybe Core.Text)
      -- | The person\'s skills.
    , skills :: (Core.Maybe Core.Text)
      -- | The brief description (tagline) of this person.
    , tagline :: (Core.Maybe Core.Text)
      -- | The URL of this person\'s profile.
    , url :: (Core.Maybe Core.Text)
      -- | A list of URLs for this person.
    , urls :: (Core.Maybe [Person_UrlsItem])
      -- | Whether the person or Google+ Page has been verified.
    , verified :: (Core.Maybe Core.Bool)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Person' with the minimum fields required to make a request.
newPerson 
    ::  Person
newPerson =
  Person
    { aboutMe = Core.Nothing
    , ageRange = Core.Nothing
    , birthday = Core.Nothing
    , braggingRights = Core.Nothing
    , circledByCount = Core.Nothing
    , cover = Core.Nothing
    , currentLocation = Core.Nothing
    , displayName = Core.Nothing
    , domain = Core.Nothing
    , emails = Core.Nothing
    , etag = Core.Nothing
    , gender = Core.Nothing
    , id = Core.Nothing
    , image = Core.Nothing
    , isPlusUser = Core.Nothing
    , kind = "plus#person"
    , language = Core.Nothing
    , name = Core.Nothing
    , nickname = Core.Nothing
    , objectType = Core.Nothing
    , occupation = Core.Nothing
    , organizations = Core.Nothing
    , placesLived = Core.Nothing
    , plusOneCount = Core.Nothing
    , relationshipStatus = Core.Nothing
    , skills = Core.Nothing
    , tagline = Core.Nothing
    , url = Core.Nothing
    , urls = Core.Nothing
    , verified = Core.Nothing
    }

instance Core.FromJSON Person where
        parseJSON
          = Core.withObject "Person"
              (\ o ->
                 Person Core.<$>
                   (o Core..:? "aboutMe") Core.<*>
                     (o Core..:? "ageRange")
                     Core.<*> (o Core..:? "birthday")
                     Core.<*> (o Core..:? "braggingRights")
                     Core.<*> (o Core..:? "circledByCount")
                     Core.<*> (o Core..:? "cover")
                     Core.<*> (o Core..:? "currentLocation")
                     Core.<*> (o Core..:? "displayName")
                     Core.<*> (o Core..:? "domain")
                     Core.<*> (o Core..:? "emails" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "etag")
                     Core.<*> (o Core..:? "gender")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "image")
                     Core.<*> (o Core..:? "isPlusUser")
                     Core.<*> (o Core..:? "kind" Core..!= "plus#person")
                     Core.<*> (o Core..:? "language")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "nickname")
                     Core.<*> (o Core..:? "objectType")
                     Core.<*> (o Core..:? "occupation")
                     Core.<*>
                     (o Core..:? "organizations" Core..!= Core.mempty)
                     Core.<*>
                     (o Core..:? "placesLived" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "plusOneCount")
                     Core.<*> (o Core..:? "relationshipStatus")
                     Core.<*> (o Core..:? "skills")
                     Core.<*> (o Core..:? "tagline")
                     Core.<*> (o Core..:? "url")
                     Core.<*> (o Core..:? "urls" Core..!= Core.mempty)
                     Core.<*> (o Core..:? "verified"))

instance Core.ToJSON Person where
        toJSON Person{..}
          = Core.object
              (Core.catMaybes
                 [("aboutMe" Core..=) Core.<$> aboutMe,
                  ("ageRange" Core..=) Core.<$> ageRange,
                  ("birthday" Core..=) Core.<$> birthday,
                  ("braggingRights" Core..=) Core.<$> braggingRights,
                  ("circledByCount" Core..=) Core.<$> circledByCount,
                  ("cover" Core..=) Core.<$> cover,
                  ("currentLocation" Core..=) Core.<$> currentLocation,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("domain" Core..=) Core.<$> domain,
                  ("emails" Core..=) Core.<$> emails,
                  ("etag" Core..=) Core.<$> etag,
                  ("gender" Core..=) Core.<$> gender,
                  ("id" Core..=) Core.<$> id,
                  ("image" Core..=) Core.<$> image,
                  ("isPlusUser" Core..=) Core.<$> isPlusUser,
                  Core.Just ("kind" Core..= kind),
                  ("language" Core..=) Core.<$> language,
                  ("name" Core..=) Core.<$> name,
                  ("nickname" Core..=) Core.<$> nickname,
                  ("objectType" Core..=) Core.<$> objectType,
                  ("occupation" Core..=) Core.<$> occupation,
                  ("organizations" Core..=) Core.<$> organizations,
                  ("placesLived" Core..=) Core.<$> placesLived,
                  ("plusOneCount" Core..=) Core.<$> plusOneCount,
                  ("relationshipStatus" Core..=) Core.<$>
                    relationshipStatus,
                  ("skills" Core..=) Core.<$> skills,
                  ("tagline" Core..=) Core.<$> tagline,
                  ("url" Core..=) Core.<$> url,
                  ("urls" Core..=) Core.<$> urls,
                  ("verified" Core..=) Core.<$> verified])


-- | The age range of the person. Valid ranges are 17 or younger, 18 to 20, and 21 or older. Age is determined from the user\'s birthday using Western age reckoning.
--
-- /See:/ 'newPerson_AgeRange' smart constructor.
data Person_AgeRange = Person_AgeRange
    {
      -- | The age range\'s upper bound, if any. Possible values include, but are not limited to, the following:
      -- - \"17\" - for age 17 - \"20\" - for age 20
      max :: (Core.Maybe Core.Int32)
      -- | The age range\'s lower bound, if any. Possible values include, but are not limited to, the following:
      -- - \"21\" - for age 21 - \"18\" - for age 18
    , min :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Person_AgeRange' with the minimum fields required to make a request.
newPerson_AgeRange 
    ::  Person_AgeRange
newPerson_AgeRange = Person_AgeRange {max = Core.Nothing, min = Core.Nothing}

instance Core.FromJSON Person_AgeRange where
        parseJSON
          = Core.withObject "Person_AgeRange"
              (\ o ->
                 Person_AgeRange Core.<$>
                   (o Core..:? "max") Core.<*> (o Core..:? "min"))

instance Core.ToJSON Person_AgeRange where
        toJSON Person_AgeRange{..}
          = Core.object
              (Core.catMaybes
                 [("max" Core..=) Core.<$> max,
                  ("min" Core..=) Core.<$> min])


-- | The cover photo content.
--
-- /See:/ 'newPerson_Cover' smart constructor.
data Person_Cover = Person_Cover
    {
      -- | Extra information about the cover photo.
      coverInfo :: (Core.Maybe Person_Cover_CoverInfo)
      -- | The person\'s primary cover image.
    , coverPhoto :: (Core.Maybe Person_Cover_CoverPhoto)
      -- | The layout of the cover art. Possible values include, but are not limited to, the following values:
      -- - \"banner\" - One large image banner.
    , layout :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Person_Cover' with the minimum fields required to make a request.
newPerson_Cover 
    ::  Person_Cover
newPerson_Cover =
  Person_Cover
    {coverInfo = Core.Nothing, coverPhoto = Core.Nothing, layout = Core.Nothing}

instance Core.FromJSON Person_Cover where
        parseJSON
          = Core.withObject "Person_Cover"
              (\ o ->
                 Person_Cover Core.<$>
                   (o Core..:? "coverInfo") Core.<*>
                     (o Core..:? "coverPhoto")
                     Core.<*> (o Core..:? "layout"))

instance Core.ToJSON Person_Cover where
        toJSON Person_Cover{..}
          = Core.object
              (Core.catMaybes
                 [("coverInfo" Core..=) Core.<$> coverInfo,
                  ("coverPhoto" Core..=) Core.<$> coverPhoto,
                  ("layout" Core..=) Core.<$> layout])


-- | Extra information about the cover photo.
--
-- /See:/ 'newPerson_Cover_CoverInfo' smart constructor.
data Person_Cover_CoverInfo = Person_Cover_CoverInfo
    {
      -- | The difference between the left position of the cover image and the actual displayed cover image. Only valid for banner layout.
      leftImageOffset :: (Core.Maybe Core.Int32)
      -- | The difference between the top position of the cover image and the actual displayed cover image. Only valid for banner layout.
    , topImageOffset :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Person_Cover_CoverInfo' with the minimum fields required to make a request.
newPerson_Cover_CoverInfo 
    ::  Person_Cover_CoverInfo
newPerson_Cover_CoverInfo =
  Person_Cover_CoverInfo
    {leftImageOffset = Core.Nothing, topImageOffset = Core.Nothing}

instance Core.FromJSON Person_Cover_CoverInfo where
        parseJSON
          = Core.withObject "Person_Cover_CoverInfo"
              (\ o ->
                 Person_Cover_CoverInfo Core.<$>
                   (o Core..:? "leftImageOffset") Core.<*>
                     (o Core..:? "topImageOffset"))

instance Core.ToJSON Person_Cover_CoverInfo where
        toJSON Person_Cover_CoverInfo{..}
          = Core.object
              (Core.catMaybes
                 [("leftImageOffset" Core..=) Core.<$>
                    leftImageOffset,
                  ("topImageOffset" Core..=) Core.<$> topImageOffset])


-- | The person\'s primary cover image.
--
-- /See:/ 'newPerson_Cover_CoverPhoto' smart constructor.
data Person_Cover_CoverPhoto = Person_Cover_CoverPhoto
    {
      -- | The height of the image.
      height :: (Core.Maybe Core.Int32)
      -- | The URL of the image.
    , url :: (Core.Maybe Core.Text)
      -- | The width of the image.
    , width :: (Core.Maybe Core.Int32)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Person_Cover_CoverPhoto' with the minimum fields required to make a request.
newPerson_Cover_CoverPhoto 
    ::  Person_Cover_CoverPhoto
newPerson_Cover_CoverPhoto =
  Person_Cover_CoverPhoto
    {height = Core.Nothing, url = Core.Nothing, width = Core.Nothing}

instance Core.FromJSON Person_Cover_CoverPhoto where
        parseJSON
          = Core.withObject "Person_Cover_CoverPhoto"
              (\ o ->
                 Person_Cover_CoverPhoto Core.<$>
                   (o Core..:? "height") Core.<*> (o Core..:? "url")
                     Core.<*> (o Core..:? "width"))

instance Core.ToJSON Person_Cover_CoverPhoto where
        toJSON Person_Cover_CoverPhoto{..}
          = Core.object
              (Core.catMaybes
                 [("height" Core..=) Core.<$> height,
                  ("url" Core..=) Core.<$> url,
                  ("width" Core..=) Core.<$> width])


--
-- /See:/ 'newPerson_EmailsItem' smart constructor.
data Person_EmailsItem = Person_EmailsItem
    {
      -- | The type of address. Possible values include, but are not limited to, the following values:
      -- - \"account\" - Google account email address. - \"home\" - Home email address. - \"work\" - Work email address. - \"other\" - Other.
      type' :: (Core.Maybe Core.Text)
      -- | The email address.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Person_EmailsItem' with the minimum fields required to make a request.
newPerson_EmailsItem 
    ::  Person_EmailsItem
newPerson_EmailsItem =
  Person_EmailsItem {type' = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Person_EmailsItem where
        parseJSON
          = Core.withObject "Person_EmailsItem"
              (\ o ->
                 Person_EmailsItem Core.<$>
                   (o Core..:? "type") Core.<*> (o Core..:? "value"))

instance Core.ToJSON Person_EmailsItem where
        toJSON Person_EmailsItem{..}
          = Core.object
              (Core.catMaybes
                 [("type" Core..=) Core.<$> type',
                  ("value" Core..=) Core.<$> value])


-- | The representation of the person\'s profile photo.
--
-- /See:/ 'newPerson_Image' smart constructor.
data Person_Image = Person_Image
    {
      -- | Whether the person\'s profile photo is the default one
      isDefault :: (Core.Maybe Core.Bool)
      -- | The URL of the person\'s profile photo. To resize the image and crop it to a square, append the query string ?sz=x, where x is the dimension in pixels of each side.
    , url :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Person_Image' with the minimum fields required to make a request.
newPerson_Image 
    ::  Person_Image
newPerson_Image = Person_Image {isDefault = Core.Nothing, url = Core.Nothing}

instance Core.FromJSON Person_Image where
        parseJSON
          = Core.withObject "Person_Image"
              (\ o ->
                 Person_Image Core.<$>
                   (o Core..:? "isDefault") Core.<*> (o Core..:? "url"))

instance Core.ToJSON Person_Image where
        toJSON Person_Image{..}
          = Core.object
              (Core.catMaybes
                 [("isDefault" Core..=) Core.<$> isDefault,
                  ("url" Core..=) Core.<$> url])


-- | An object representation of the individual components of a person\'s name.
--
-- /See:/ 'newPerson_Name' smart constructor.
data Person_Name = Person_Name
    {
      -- | The family name (last name) of this person.
      familyName :: (Core.Maybe Core.Text)
      -- | The full name of this person, including middle names, suffixes, etc.
    , formatted :: (Core.Maybe Core.Text)
      -- | The given name (first name) of this person.
    , givenName :: (Core.Maybe Core.Text)
      -- | The honorific prefixes (such as \"Dr.\" or \"Mrs.\") for this person.
    , honorificPrefix :: (Core.Maybe Core.Text)
      -- | The honorific suffixes (such as \"Jr.\") for this person.
    , honorificSuffix :: (Core.Maybe Core.Text)
      -- | The middle name of this person.
    , middleName :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Person_Name' with the minimum fields required to make a request.
newPerson_Name 
    ::  Person_Name
newPerson_Name =
  Person_Name
    { familyName = Core.Nothing
    , formatted = Core.Nothing
    , givenName = Core.Nothing
    , honorificPrefix = Core.Nothing
    , honorificSuffix = Core.Nothing
    , middleName = Core.Nothing
    }

instance Core.FromJSON Person_Name where
        parseJSON
          = Core.withObject "Person_Name"
              (\ o ->
                 Person_Name Core.<$>
                   (o Core..:? "familyName") Core.<*>
                     (o Core..:? "formatted")
                     Core.<*> (o Core..:? "givenName")
                     Core.<*> (o Core..:? "honorificPrefix")
                     Core.<*> (o Core..:? "honorificSuffix")
                     Core.<*> (o Core..:? "middleName"))

instance Core.ToJSON Person_Name where
        toJSON Person_Name{..}
          = Core.object
              (Core.catMaybes
                 [("familyName" Core..=) Core.<$> familyName,
                  ("formatted" Core..=) Core.<$> formatted,
                  ("givenName" Core..=) Core.<$> givenName,
                  ("honorificPrefix" Core..=) Core.<$> honorificPrefix,
                  ("honorificSuffix" Core..=) Core.<$> honorificSuffix,
                  ("middleName" Core..=) Core.<$> middleName])


--
-- /See:/ 'newPerson_OrganizationsItem' smart constructor.
data Person_OrganizationsItem = Person_OrganizationsItem
    {
      -- | The department within the organization. Deprecated.
      department :: (Core.Maybe Core.Text)
      -- | A short description of the person\'s role in this organization. Deprecated.
    , description :: (Core.Maybe Core.Text)
      -- | The date that the person left this organization.
    , endDate :: (Core.Maybe Core.Text)
      -- | The location of this organization. Deprecated.
    , location :: (Core.Maybe Core.Text)
      -- | The name of the organization.
    , name :: (Core.Maybe Core.Text)
      -- | If \"true\", indicates this organization is the person\'s primary one, which is typically interpreted as the current one.
    , primary :: (Core.Maybe Core.Bool)
      -- | The date that the person joined this organization.
    , startDate :: (Core.Maybe Core.Text)
      -- | The person\'s job title or role within the organization.
    , title :: (Core.Maybe Core.Text)
      -- | The type of organization. Possible values include, but are not limited to, the following values:
      -- - \"work\" - Work. - \"school\" - School.
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Person_OrganizationsItem' with the minimum fields required to make a request.
newPerson_OrganizationsItem 
    ::  Person_OrganizationsItem
newPerson_OrganizationsItem =
  Person_OrganizationsItem
    { department = Core.Nothing
    , description = Core.Nothing
    , endDate = Core.Nothing
    , location = Core.Nothing
    , name = Core.Nothing
    , primary = Core.Nothing
    , startDate = Core.Nothing
    , title = Core.Nothing
    , type' = Core.Nothing
    }

instance Core.FromJSON Person_OrganizationsItem where
        parseJSON
          = Core.withObject "Person_OrganizationsItem"
              (\ o ->
                 Person_OrganizationsItem Core.<$>
                   (o Core..:? "department") Core.<*>
                     (o Core..:? "description")
                     Core.<*> (o Core..:? "endDate")
                     Core.<*> (o Core..:? "location")
                     Core.<*> (o Core..:? "name")
                     Core.<*> (o Core..:? "primary")
                     Core.<*> (o Core..:? "startDate")
                     Core.<*> (o Core..:? "title")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON Person_OrganizationsItem where
        toJSON Person_OrganizationsItem{..}
          = Core.object
              (Core.catMaybes
                 [("department" Core..=) Core.<$> department,
                  ("description" Core..=) Core.<$> description,
                  ("endDate" Core..=) Core.<$> endDate,
                  ("location" Core..=) Core.<$> location,
                  ("name" Core..=) Core.<$> name,
                  ("primary" Core..=) Core.<$> primary,
                  ("startDate" Core..=) Core.<$> startDate,
                  ("title" Core..=) Core.<$> title,
                  ("type" Core..=) Core.<$> type'])


--
-- /See:/ 'newPerson_PlacesLivedItem' smart constructor.
data Person_PlacesLivedItem = Person_PlacesLivedItem
    {
      -- | If \"true\", this place of residence is this person\'s primary residence.
      primary :: (Core.Maybe Core.Bool)
      -- | A place where this person has lived. For example: \"Seattle, WA\", \"Near Toronto\".
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Person_PlacesLivedItem' with the minimum fields required to make a request.
newPerson_PlacesLivedItem 
    ::  Person_PlacesLivedItem
newPerson_PlacesLivedItem =
  Person_PlacesLivedItem {primary = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Person_PlacesLivedItem where
        parseJSON
          = Core.withObject "Person_PlacesLivedItem"
              (\ o ->
                 Person_PlacesLivedItem Core.<$>
                   (o Core..:? "primary") Core.<*> (o Core..:? "value"))

instance Core.ToJSON Person_PlacesLivedItem where
        toJSON Person_PlacesLivedItem{..}
          = Core.object
              (Core.catMaybes
                 [("primary" Core..=) Core.<$> primary,
                  ("value" Core..=) Core.<$> value])


--
-- /See:/ 'newPerson_UrlsItem' smart constructor.
data Person_UrlsItem = Person_UrlsItem
    {
      -- | The label of the URL.
      label :: (Core.Maybe Core.Text)
      -- | The type of URL. Possible values include, but are not limited to, the following values:
      -- - \"otherProfile\" - URL for another profile. - \"contributor\" - URL to a site for which this person is a contributor. - \"website\" - URL for this Google+ Page\'s primary website. - \"other\" - Other URL.
    , type' :: (Core.Maybe Core.Text)
      -- | The URL value.
    , value :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Person_UrlsItem' with the minimum fields required to make a request.
newPerson_UrlsItem 
    ::  Person_UrlsItem
newPerson_UrlsItem =
  Person_UrlsItem
    {label = Core.Nothing, type' = Core.Nothing, value = Core.Nothing}

instance Core.FromJSON Person_UrlsItem where
        parseJSON
          = Core.withObject "Person_UrlsItem"
              (\ o ->
                 Person_UrlsItem Core.<$>
                   (o Core..:? "label") Core.<*> (o Core..:? "type")
                     Core.<*> (o Core..:? "value"))

instance Core.ToJSON Person_UrlsItem where
        toJSON Person_UrlsItem{..}
          = Core.object
              (Core.catMaybes
                 [("label" Core..=) Core.<$> label,
                  ("type" Core..=) Core.<$> type',
                  ("value" Core..=) Core.<$> value])


--
-- /See:/ 'newPlace' smart constructor.
data Place = Place
    {
      -- | The physical address of the place.
      address :: (Core.Maybe Place_Address)
      -- | The display name of the place.
    , displayName :: (Core.Maybe Core.Text)
      -- | The id of the place.
    , id :: (Core.Maybe Core.Text)
      -- | Identifies this resource as a place. Value: \"plus#place\".
    , kind :: Core.Text
      -- | The position of the place.
    , position :: (Core.Maybe Place_Position)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Place' with the minimum fields required to make a request.
newPlace 
    ::  Place
newPlace =
  Place
    { address = Core.Nothing
    , displayName = Core.Nothing
    , id = Core.Nothing
    , kind = "plus#place"
    , position = Core.Nothing
    }

instance Core.FromJSON Place where
        parseJSON
          = Core.withObject "Place"
              (\ o ->
                 Place Core.<$>
                   (o Core..:? "address") Core.<*>
                     (o Core..:? "displayName")
                     Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "kind" Core..!= "plus#place")
                     Core.<*> (o Core..:? "position"))

instance Core.ToJSON Place where
        toJSON Place{..}
          = Core.object
              (Core.catMaybes
                 [("address" Core..=) Core.<$> address,
                  ("displayName" Core..=) Core.<$> displayName,
                  ("id" Core..=) Core.<$> id,
                  Core.Just ("kind" Core..= kind),
                  ("position" Core..=) Core.<$> position])


-- | The physical address of the place.
--
-- /See:/ 'newPlace_Address' smart constructor.
newtype Place_Address = Place_Address
    {
      -- | The formatted address for display.
      formatted :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Place_Address' with the minimum fields required to make a request.
newPlace_Address 
    ::  Place_Address
newPlace_Address = Place_Address {formatted = Core.Nothing}

instance Core.FromJSON Place_Address where
        parseJSON
          = Core.withObject "Place_Address"
              (\ o ->
                 Place_Address Core.<$> (o Core..:? "formatted"))

instance Core.ToJSON Place_Address where
        toJSON Place_Address{..}
          = Core.object
              (Core.catMaybes
                 [("formatted" Core..=) Core.<$> formatted])


-- | The position of the place.
--
-- /See:/ 'newPlace_Position' smart constructor.
data Place_Position = Place_Position
    {
      -- | The latitude of this position.
      latitude :: (Core.Maybe Core.Double)
      -- | The longitude of this position.
    , longitude :: (Core.Maybe Core.Double)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'Place_Position' with the minimum fields required to make a request.
newPlace_Position 
    ::  Place_Position
newPlace_Position =
  Place_Position {latitude = Core.Nothing, longitude = Core.Nothing}

instance Core.FromJSON Place_Position where
        parseJSON
          = Core.withObject "Place_Position"
              (\ o ->
                 Place_Position Core.<$>
                   (o Core..:? "latitude") Core.<*>
                     (o Core..:? "longitude"))

instance Core.ToJSON Place_Position where
        toJSON Place_Position{..}
          = Core.object
              (Core.catMaybes
                 [("latitude" Core..=) Core.<$> latitude,
                  ("longitude" Core..=) Core.<$> longitude])


--
-- /See:/ 'newPlusAclentryResource' smart constructor.
data PlusAclentryResource = PlusAclentryResource
    {
      -- | A descriptive name for this entry. Suitable for display.
      displayName :: (Core.Maybe Core.Text)
      -- | The ID of the entry. For entries of type \"person\" or \"circle\", this is the ID of the resource. For other types, this property is not set.
    , id :: (Core.Maybe Core.Text)
      -- | The type of entry describing to whom access is granted. Possible values are:
      -- - \"person\" - Access to an individual. - \"circle\" - Access to members of a circle. - \"myCircles\" - Access to members of all the person\'s circles. - \"extendedCircles\" - Access to members of all the person\'s circles, plus all of the people in their circles. - \"domain\" - Access to members of the person\'s Google Apps domain. - \"public\" - Access to anyone on the web.
    , type' :: (Core.Maybe Core.Text)
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlusAclentryResource' with the minimum fields required to make a request.
newPlusAclentryResource 
    ::  PlusAclentryResource
newPlusAclentryResource =
  PlusAclentryResource
    {displayName = Core.Nothing, id = Core.Nothing, type' = Core.Nothing}

instance Core.FromJSON PlusAclentryResource where
        parseJSON
          = Core.withObject "PlusAclentryResource"
              (\ o ->
                 PlusAclentryResource Core.<$>
                   (o Core..:? "displayName") Core.<*> (o Core..:? "id")
                     Core.<*> (o Core..:? "type"))

instance Core.ToJSON PlusAclentryResource where
        toJSON PlusAclentryResource{..}
          = Core.object
              (Core.catMaybes
                 [("displayName" Core..=) Core.<$> displayName,
                  ("id" Core..=) Core.<$> id,
                  ("type" Core..=) Core.<$> type'])

