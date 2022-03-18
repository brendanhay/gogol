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
-- Module      : Network.Google.Plus.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.Google.Plus.Internal.Sum
  ( -- * ActivitiesListCollection
    ActivitiesListCollection
      ( ActivitiesListCollection_Public,
        ..
      ),

    -- * ActivitiesSearchOrderBy
    ActivitiesSearchOrderBy
      ( ActivitiesSearchOrderBy_Best,
        ActivitiesSearchOrderBy_Recent,
        ..
      ),

    -- * CommentsListSortOrder
    CommentsListSortOrder
      ( CommentsListSortOrder_Ascending,
        CommentsListSortOrder_Descending,
        ..
      ),

    -- * PeopleListCollection
    PeopleListCollection
      ( PeopleListCollection_Connected,
        PeopleListCollection_Visible,
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
        ..
      ),
  )
where

import qualified Network.Google.Prelude as Core

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

-- | All public activities created by the specified user.
pattern ActivitiesListCollection_Public :: ActivitiesListCollection
pattern ActivitiesListCollection_Public = ActivitiesListCollection "public"

{-# COMPLETE
  ActivitiesListCollection_Public,
  ActivitiesListCollection
  #-}

-- | Specifies how to order search results.
newtype ActivitiesSearchOrderBy = ActivitiesSearchOrderBy {fromActivitiesSearchOrderBy :: Core.Text}
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

-- | Sort activities by relevance to the user, most relevant first.
pattern ActivitiesSearchOrderBy_Best :: ActivitiesSearchOrderBy
pattern ActivitiesSearchOrderBy_Best = ActivitiesSearchOrderBy "best"

-- | Sort activities by published date, most recent first.
pattern ActivitiesSearchOrderBy_Recent :: ActivitiesSearchOrderBy
pattern ActivitiesSearchOrderBy_Recent = ActivitiesSearchOrderBy "recent"

{-# COMPLETE
  ActivitiesSearchOrderBy_Best,
  ActivitiesSearchOrderBy_Recent,
  ActivitiesSearchOrderBy
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

-- | The list of visible people in the authenticated user\'s circles who also use the requesting app. This list is limited to users who made their app activities visible to the authenticated user.
pattern PeopleListCollection_Connected :: PeopleListCollection
pattern PeopleListCollection_Connected = PeopleListCollection "connected"

-- | The list of people who this user has added to one or more circles, limited to the circles visible to the requesting application.
pattern PeopleListCollection_Visible :: PeopleListCollection
pattern PeopleListCollection_Visible = PeopleListCollection "visible"

{-# COMPLETE
  PeopleListCollection_Connected,
  PeopleListCollection_Visible,
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

{-# COMPLETE
  PeopleListByActivityCollection_Plusoners,
  PeopleListByActivityCollection_Resharers,
  PeopleListByActivityCollection
  #-}
