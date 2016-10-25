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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the specified data source.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @fitness.users.dataSources.get@.
module Network.Google.Resource.Fitness.Users.DataSources.Get
    (
    -- * REST Resource
      UsersDataSourcesGetResource

    -- * Creating a Request
    , usersDataSourcesGet
    , UsersDataSourcesGet

    -- * Request Lenses
    , udsgDataSourceId
    , udsgUserId
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.get@ method which the
-- 'UsersDataSourcesGet' request conforms to.
type UsersDataSourcesGetResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "dataSources" :>
               Capture "dataSourceId" Text :>
                 QueryParam "alt" AltJSON :> Get '[JSON] DataSource

-- | Returns the specified data source.
--
-- /See:/ 'usersDataSourcesGet' smart constructor.
data UsersDataSourcesGet = UsersDataSourcesGet'
    { _udsgDataSourceId :: !Text
    , _udsgUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsgDataSourceId'
--
-- * 'udsgUserId'
usersDataSourcesGet
    :: Text -- ^ 'udsgDataSourceId'
    -> Text -- ^ 'udsgUserId'
    -> UsersDataSourcesGet
usersDataSourcesGet pUdsgDataSourceId_ pUdsgUserId_ =
    UsersDataSourcesGet'
    { _udsgDataSourceId = pUdsgDataSourceId_
    , _udsgUserId = pUdsgUserId_
    }

-- | The data stream ID of the data source to retrieve.
udsgDataSourceId :: Lens' UsersDataSourcesGet Text
udsgDataSourceId
  = lens _udsgDataSourceId
      (\ s a -> s{_udsgDataSourceId = a})

-- | Retrieve a data source for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsgUserId :: Lens' UsersDataSourcesGet Text
udsgUserId
  = lens _udsgUserId (\ s a -> s{_udsgUserId = a})

instance GoogleRequest UsersDataSourcesGet where
        type Rs UsersDataSourcesGet = DataSource
        type Scopes UsersDataSourcesGet =
             '["https://www.googleapis.com/auth/fitness.activity.read",
               "https://www.googleapis.com/auth/fitness.activity.write",
               "https://www.googleapis.com/auth/fitness.body.read",
               "https://www.googleapis.com/auth/fitness.body.write",
               "https://www.googleapis.com/auth/fitness.location.read",
               "https://www.googleapis.com/auth/fitness.location.write",
               "https://www.googleapis.com/auth/fitness.nutrition.read",
               "https://www.googleapis.com/auth/fitness.nutrition.write"]
        requestClient UsersDataSourcesGet'{..}
          = go _udsgUserId _udsgDataSourceId (Just AltJSON)
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDataSourcesGetResource)
                      mempty
