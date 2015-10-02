{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DataTransfer.Transfers.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a data transfer request by its resource ID.
--
-- /See:/ <https://developers.google.com/admin-sdk/data-transfer/ Admin Data Transfer API Reference> for @DataTransferTransfersGet@.
module Network.Google.Resource.DataTransfer.Transfers.Get
    (
    -- * REST Resource
      TransfersGetResource

    -- * Creating a Request
    , transfersGet'
    , TransfersGet'

    -- * Request Lenses
    , tgQuotaUser
    , tgPrettyPrint
    , tgUserIP
    , tgKey
    , tgOAuthToken
    , tgDataTransferId
    , tgFields
    ) where

import           Network.Google.AdminDataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @DataTransferTransfersGet@ which the
-- 'TransfersGet'' request conforms to.
type TransfersGetResource =
     "transfers" :>
       Capture "dataTransferId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Get '[JSON] DataTransfer

-- | Retrieves a data transfer request by its resource ID.
--
-- /See:/ 'transfersGet'' smart constructor.
data TransfersGet' = TransfersGet'
    { _tgQuotaUser      :: !(Maybe Text)
    , _tgPrettyPrint    :: !Bool
    , _tgUserIP         :: !(Maybe Text)
    , _tgKey            :: !(Maybe Key)
    , _tgOAuthToken     :: !(Maybe OAuthToken)
    , _tgDataTransferId :: !Text
    , _tgFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransfersGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tgQuotaUser'
--
-- * 'tgPrettyPrint'
--
-- * 'tgUserIP'
--
-- * 'tgKey'
--
-- * 'tgOAuthToken'
--
-- * 'tgDataTransferId'
--
-- * 'tgFields'
transfersGet'
    :: Text -- ^ 'dataTransferId'
    -> TransfersGet'
transfersGet' pTgDataTransferId_ =
    TransfersGet'
    { _tgQuotaUser = Nothing
    , _tgPrettyPrint = True
    , _tgUserIP = Nothing
    , _tgKey = Nothing
    , _tgOAuthToken = Nothing
    , _tgDataTransferId = pTgDataTransferId_
    , _tgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tgQuotaUser :: Lens' TransfersGet' (Maybe Text)
tgQuotaUser
  = lens _tgQuotaUser (\ s a -> s{_tgQuotaUser = a})

-- | Returns response with indentations and line breaks.
tgPrettyPrint :: Lens' TransfersGet' Bool
tgPrettyPrint
  = lens _tgPrettyPrint
      (\ s a -> s{_tgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tgUserIP :: Lens' TransfersGet' (Maybe Text)
tgUserIP = lens _tgUserIP (\ s a -> s{_tgUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tgKey :: Lens' TransfersGet' (Maybe Key)
tgKey = lens _tgKey (\ s a -> s{_tgKey = a})

-- | OAuth 2.0 token for the current user.
tgOAuthToken :: Lens' TransfersGet' (Maybe OAuthToken)
tgOAuthToken
  = lens _tgOAuthToken (\ s a -> s{_tgOAuthToken = a})

-- | ID of the resource to be retrieved. This is returned in the response
-- from the insert method.
tgDataTransferId :: Lens' TransfersGet' Text
tgDataTransferId
  = lens _tgDataTransferId
      (\ s a -> s{_tgDataTransferId = a})

-- | Selector specifying which fields to include in a partial response.
tgFields :: Lens' TransfersGet' (Maybe Text)
tgFields = lens _tgFields (\ s a -> s{_tgFields = a})

instance GoogleAuth TransfersGet' where
        authKey = tgKey . _Just
        authToken = tgOAuthToken . _Just

instance GoogleRequest TransfersGet' where
        type Rs TransfersGet' = DataTransfer
        request
          = requestWithRoute defReq adminDataTransferURL
        requestWithRoute r u TransfersGet'{..}
          = go _tgDataTransferId _tgQuotaUser
              (Just _tgPrettyPrint)
              _tgUserIP
              _tgFields
              _tgKey
              _tgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TransfersGetResource)
                      r
                      u
