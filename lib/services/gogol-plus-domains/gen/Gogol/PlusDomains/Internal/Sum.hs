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
-- Module      : Gogol.PlusDomains.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.PlusDomains.Internal.Sum
  ( -- * ActivitiesListCollection
    ActivitiesListCollection
      ( ActivitiesListCollection_User,
        ..
      ),

    -- * CommentsListSortOrder
    CommentsListSortOrder
      ( CommentsListSortOrder_Ascending,
        CommentsListSortOrder_Descending,
        ..
      ),

    -- * MediaInsertCollection
    MediaInsertCollection
      ( MediaInsertCollection_Cloud,
        ..
      ),

    -- * PeopleListCollection
    PeopleListCollection
      ( PeopleListCollection_Circled,
        ..
      ),

    -- * PeopleListOrderBy
    PeopleListOrderBy
      ( PeopleListOrderBy_Alphabetical,
        PeopleListOrderBy_Best,
        ..
      ),

    -- * PeopleListByActivityCollection
    PeopleListByActivityCollection
      ( PeopleListByActivityCollection_Plusoners,
        PeopleListByActivityCollection_Resharers,
        PeopleListByActivityCollection_Sharedto,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

-- | The collection of activities to list.
newtype ActivitiesListCollection = ActivitiesListCollection {fromActivitiesListCollection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | All activities created by the specified user that the authenticated user is authorized to view.
pattern ActivitiesListCollection_User :: ActivitiesListCollection
pattern ActivitiesListCollection_User = ActivitiesListCollection "user"

{-# COMPLETE
  ActivitiesListCollection_User,
  ActivitiesListCollection
  #-}

-- | The order in which to sort the list of comments.
newtype CommentsListSortOrder = CommentsListSortOrder {fromCommentsListSortOrder :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Sort oldest comments first.
pattern CommentsListSortOrder_Ascending :: CommentsListSortOrder
pattern CommentsListSortOrder_Ascending = CommentsListSortOrder "ascending"

-- | Sort newest comments first.
pattern CommentsListSortOrder_Descending :: CommentsListSortOrder
pattern CommentsListSortOrder_Descending = CommentsListSortOrder "descending"

{-# COMPLETE
  CommentsListSortOrder_Ascending,
  CommentsListSortOrder_Descending,
  CommentsListSortOrder
  #-}

newtype MediaInsertCollection = MediaInsertCollection {fromMediaInsertCollection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Upload the media to share on Google+.
pattern MediaInsertCollection_Cloud :: MediaInsertCollection
pattern MediaInsertCollection_Cloud = MediaInsertCollection "cloud"

{-# COMPLETE
  MediaInsertCollection_Cloud,
  MediaInsertCollection
  #-}

-- | The collection of people to list.
newtype PeopleListCollection = PeopleListCollection {fromPeopleListCollection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | The list of people who this user has added to one or more circles.
pattern PeopleListCollection_Circled :: PeopleListCollection
pattern PeopleListCollection_Circled = PeopleListCollection "circled"

{-# COMPLETE
  PeopleListCollection_Circled,
  PeopleListCollection
  #-}

-- | The order to return people in.
newtype PeopleListOrderBy = PeopleListOrderBy {fromPeopleListOrderBy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | Order the people by their display name.
pattern PeopleListOrderBy_Alphabetical :: PeopleListOrderBy
pattern PeopleListOrderBy_Alphabetical = PeopleListOrderBy "alphabetical"

-- | Order people based on the relevence to the viewer.
pattern PeopleListOrderBy_Best :: PeopleListOrderBy
pattern PeopleListOrderBy_Best = PeopleListOrderBy "best"

{-# COMPLETE
  PeopleListOrderBy_Alphabetical,
  PeopleListOrderBy_Best,
  PeopleListOrderBy
  #-}

-- | The collection of people to list.
newtype PeopleListByActivityCollection = PeopleListByActivityCollection {fromPeopleListByActivityCollection :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | List all people who have +1\'d this activity.
pattern PeopleListByActivityCollection_Plusoners :: PeopleListByActivityCollection
pattern PeopleListByActivityCollection_Plusoners = PeopleListByActivityCollection "plusoners"

-- | List all people who have reshared this activity.
pattern PeopleListByActivityCollection_Resharers :: PeopleListByActivityCollection
pattern PeopleListByActivityCollection_Resharers = PeopleListByActivityCollection "resharers"

-- | List all people who this activity was shared to.
pattern PeopleListByActivityCollection_Sharedto :: PeopleListByActivityCollection
pattern PeopleListByActivityCollection_Sharedto = PeopleListByActivityCollection "sharedto"

{-# COMPLETE
  PeopleListByActivityCollection_Plusoners,
  PeopleListByActivityCollection_Resharers,
  PeopleListByActivityCollection_Sharedto,
  PeopleListByActivityCollection
  #-}
