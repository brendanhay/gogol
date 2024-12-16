{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Plus.People.List
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List all of the people in the specified collection.
--
-- /See:/ <https://developers.google.com/+/api/ Google+ API Reference> for @plus.people.list@.
module Gogol.Plus.People.List
    (
    -- * Resource
      PlusPeopleListResource

    -- ** Constructing a Request
    , PlusPeopleList (..)
    , newPlusPeopleList
    ) where

import qualified Gogol.Prelude as Core
import Gogol.Plus.Types

-- | A resource alias for @plus.people.list@ method which the
-- 'PlusPeopleList' request conforms to.
type PlusPeopleListResource =
     "plus" Core.:>
       "v1" Core.:>
         "people" Core.:>
           Core.Capture "userId" Core.Text Core.:>
             "people" Core.:>
               Core.Capture "collection" PeopleListCollection
                 Core.:>
                 Core.QueryParam "maxResults" Core.Word32 Core.:>
                   Core.QueryParam "orderBy" PeopleListOrderBy Core.:>
                     Core.QueryParam "pageToken" Core.Text Core.:>
                       Core.QueryParam "alt" Core.AltJSON Core.:>
                         Core.Get '[Core.JSON] PeopleFeed

-- | List all of the people in the specified collection.
--
-- /See:/ 'newPlusPeopleList' smart constructor.
data PlusPeopleList = PlusPeopleList
    {
      -- | The collection of people to list.
      collection :: PeopleListCollection
      -- | The maximum number of people to include in the response, which is used for paging. For any response, the actual number returned might be less than the specified maxResults.
    , maxResults :: Core.Word32
      -- | The order to return people in.
    , orderBy :: (Core.Maybe PeopleListOrderBy)
      -- | The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of \"nextPageToken\" from the previous response.
    , pageToken :: (Core.Maybe Core.Text)
      -- | Get the collection of people for the person identified. Use \"me\" to indicate the authenticated user.
    , userId :: Core.Text
    }
    deriving (Core.Eq, Core.Show, Core.Generic)

-- | Creates a value of 'PlusPeopleList' with the minimum fields required to make a request.
newPlusPeopleList 
    ::  PeopleListCollection
       -- ^  The collection of people to list. See 'collection'.
    -> Core.Text
       -- ^  Get the collection of people for the person identified. Use \"me\" to indicate the authenticated user. See 'userId'.
    -> PlusPeopleList
newPlusPeopleList collection userId =
  PlusPeopleList
    { collection = collection
    , maxResults = 100
    , orderBy = Core.Nothing
    , pageToken = Core.Nothing
    , userId = userId
    }

instance Core.GoogleRequest PlusPeopleList where
        type Rs PlusPeopleList = PeopleFeed
        type Scopes PlusPeopleList = '[Plus'Login, Plus'Me]
        requestClient PlusPeopleList{..}
          = go userId collection (Core.Just maxResults) orderBy
              pageToken
              (Core.Just Core.AltJSON)
              plusService
          where go
                  = Core.buildClient
                      (Core.Proxy :: Core.Proxy PlusPeopleListResource)
                      Core.mempty

