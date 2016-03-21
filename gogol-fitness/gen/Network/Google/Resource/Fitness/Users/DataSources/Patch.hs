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
-- Module      : Network.Google.Resource.Fitness.Users.DataSources.Patch
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
-- identified by their data stream ID. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/fit/rest/ Fitness Reference> for @fitness.users.dataSources.patch@.
module Network.Google.Resource.Fitness.Users.DataSources.Patch
    (
    -- * REST Resource
      UsersDataSourcesPatchResource

    -- * Creating a Request
    , usersDataSourcesPatch
    , UsersDataSourcesPatch

    -- * Request Lenses
    , udspDataSourceId
    , udspPayload
    , udspUserId
    ) where

import           Network.Google.Fitness.Types
import           Network.Google.Prelude

-- | A resource alias for @fitness.users.dataSources.patch@ method which the
-- 'UsersDataSourcesPatch' request conforms to.
type UsersDataSourcesPatchResource =
     "fitness" :>
       "v1" :>
         "users" :>
           Capture "userId" Text :>
             "dataSources" :>
               Capture "dataSourceId" Text :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] DataSource :>
                     Patch '[JSON] DataSource

-- | Updates a given data source. It is an error to modify the data source\'s
-- data stream ID, data type, type, stream name or device information apart
-- from the device version. Changing these fields would require a new
-- unique data stream ID and separate data source. Data sources are
-- identified by their data stream ID. This method supports patch
-- semantics.
--
-- /See:/ 'usersDataSourcesPatch' smart constructor.
data UsersDataSourcesPatch = UsersDataSourcesPatch'
    { _udspDataSourceId :: !Text
    , _udspPayload      :: !DataSource
    , _udspUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UsersDataSourcesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'udspDataSourceId'
--
-- * 'udspPayload'
--
-- * 'udspUserId'
usersDataSourcesPatch
    :: Text -- ^ 'udspDataSourceId'
    -> DataSource -- ^ 'udspPayload'
    -> Text -- ^ 'udspUserId'
    -> UsersDataSourcesPatch
usersDataSourcesPatch pUdspDataSourceId_ pUdspPayload_ pUdspUserId_ =
    UsersDataSourcesPatch'
    { _udspDataSourceId = pUdspDataSourceId_
    , _udspPayload = pUdspPayload_
    , _udspUserId = pUdspUserId_
    }

-- | The data stream ID of the data source to update.
udspDataSourceId :: Lens' UsersDataSourcesPatch Text
udspDataSourceId
  = lens _udspDataSourceId
      (\ s a -> s{_udspDataSourceId = a})

-- | Multipart request metadata.
udspPayload :: Lens' UsersDataSourcesPatch DataSource
udspPayload
  = lens _udspPayload (\ s a -> s{_udspPayload = a})

-- | Update the data source for the person identified. Use me to indicate the
-- authenticated user. Only me is supported at this time.
udspUserId :: Lens' UsersDataSourcesPatch Text
udspUserId
  = lens _udspUserId (\ s a -> s{_udspUserId = a})

instance GoogleRequest UsersDataSourcesPatch where
        type Rs UsersDataSourcesPatch = DataSource
        type Scopes UsersDataSourcesPatch =
             '["https://www.googleapis.com/auth/fitness.activity.write",
               "https://www.googleapis.com/auth/fitness.body.write",
               "https://www.googleapis.com/auth/fitness.location.write"]
        requestClient UsersDataSourcesPatch'{..}
          = go _udspUserId _udspDataSourceId (Just AltJSON)
              _udspPayload
              fitnessService
          where go
                  = buildClient
                      (Proxy :: Proxy UsersDataSourcesPatchResource)
                      mempty
