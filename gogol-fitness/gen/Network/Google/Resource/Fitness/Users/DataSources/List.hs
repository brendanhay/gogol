{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all data sources that are visible to the developer, using the
-- OAuth scopes provided. The list is not exhaustive: the user may have
-- private data sources that are only visible to other developers or calls
-- using other scopes.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @fitness.users.dataSources.list@.
module Network.Google.Resource.Fitness.Users.DataSources.List
    (
    -- * REST Resource
      UsersDataSourcesListResource

    -- * Creating a Request
    , usersDataSourcesList
    , UsersDataSourcesList

    -- * Request Lenses
    , udslDataTypeName
    , udslUserId
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.list@ method which the
-- 'UsersDataSourcesList' request conforms to.
type UsersDataSourcesListResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "dataSources" :>
               QueryParams "dataTypeName" Text :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] ListDataSourcesResponse

-- | Lists all data sources that are visible to the developer, using the
-- OAuth scopes provided. The list is not exhaustive: the user may have
-- private data sources that are only visible to other developers or calls
-- using other scopes.
--
-- /See:/ 'usersDataSourcesList' smart constructor.
data UsersDataSourcesList = UsersDataSourcesList
    { _udslDataTypeName :: !(Maybe [Text])
    , _udslUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udslDataTypeName'
--
-- * 'udslUserId'
usersDataSourcesList
    :: Text -- ^ 'udslUserId'
    -> UsersDataSourcesList
usersDataSourcesList pUdslUserId_ =
    UsersDataSourcesList
    { _udslDataTypeName = Nothing
    , _udslUserId = pUdslUserId_
    }

-- | The names of data types to include in the list. If not specified, all
-- data sources will be returned.
udslDataTypeName :: Lens' UsersDataSourcesList [Text]
udslDataTypeName
  = lens _udslDataTypeName
      (\ s a -> s{_udslDataTypeName = a})
      . _Default
      . _Coerce

-- | List data sources for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udslUserId :: Lens' UsersDataSourcesList Text
udslUserId
  = lens _udslUserId (\ s a -> s{_udslUserId = a})

instance GoogleRequest UsersDataSourcesList where
        type Rs UsersDataSourcesList =
             ListDataSourcesResponse
        requestClient UsersDataSourcesList{..}
          = go _udslUserId (_udslDataTypeName ^. _Default)
              (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDataSourcesListResource)
                      mempty
