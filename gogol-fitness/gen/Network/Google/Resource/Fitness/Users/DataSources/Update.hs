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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a given data source. It is an error to modify the data source\'s
-- data stream ID, data type, type, stream name or device information apart
-- from the device version. Changing these fields would require a new
-- unique data stream ID and separate data source. Data sources are
-- identified by their data stream ID.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @fitness.users.dataSources.update@.
module Network.Google.Resource.Fitness.Users.DataSources.Update
    (
    -- * REST Resource
      UsersDataSourcesUpdateResource

    -- * Creating a Request
    , usersDataSourcesUpdate
    , UsersDataSourcesUpdate

    -- * Request Lenses
    , udsuDataSourceId
    , udsuPayload
    , udsuUserId
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.update@ method which the
-- 'UsersDataSourcesUpdate' request conforms to.
type UsersDataSourcesUpdateResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "dataSources" :>
               Capture "dataSourceId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] DataSource :> Put '[JSON] DataSource

-- | Updates a given data source. It is an error to modify the data source\'s
-- data stream ID, data type, type, stream name or device information apart
-- from the device version. Changing these fields would require a new
-- unique data stream ID and separate data source. Data sources are
-- identified by their data stream ID.
--
-- /See:/ 'usersDataSourcesUpdate' smart constructor.
data UsersDataSourcesUpdate = UsersDataSourcesUpdate
    { _udsuDataSourceId :: !Text
    , _udsuPayload      :: !DataSource
    , _udsuUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udsuDataSourceId'
--
-- * 'udsuPayload'
--
-- * 'udsuUserId'
usersDataSourcesUpdate
    :: Text -- ^ 'udsuDataSourceId'
    -> DataSource -- ^ 'udsuPayload'
    -> Text -- ^ 'udsuUserId'
    -> UsersDataSourcesUpdate
usersDataSourcesUpdate pUdsuDataSourceId_ pUdsuPayload_ pUdsuUserId_ =
    UsersDataSourcesUpdate
    { _udsuDataSourceId = pUdsuDataSourceId_
    , _udsuPayload = pUdsuPayload_
    , _udsuUserId = pUdsuUserId_
    }

-- | The data stream ID of the data source to update.
udsuDataSourceId :: Lens' UsersDataSourcesUpdate Text
udsuDataSourceId
  = lens _udsuDataSourceId
      (\ s a -> s{_udsuDataSourceId = a})

-- | Multipart request metadata.
udsuPayload :: Lens' UsersDataSourcesUpdate DataSource
udsuPayload
  = lens _udsuPayload (\ s a -> s{_udsuPayload = a})

-- | Update the data source for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udsuUserId :: Lens' UsersDataSourcesUpdate Text
udsuUserId
  = lens _udsuUserId (\ s a -> s{_udsuUserId = a})

instance GoogleRequest UsersDataSourcesUpdate where
        type Rs UsersDataSourcesUpdate = DataSource
        requestClient UsersDataSourcesUpdate{..}
          = go _udsuUserId _udsuDataSourceId (Just AltJSON)
              _udsuPayload
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDataSourcesUpdateResource)
                      mempty
