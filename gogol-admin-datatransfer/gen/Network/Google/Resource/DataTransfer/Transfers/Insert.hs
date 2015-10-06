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
-- Module      : Network.Google.Resource.DataTransfer.Transfers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a data transfer request.
--
-- /See:/ <https://developers.google.com/admin-sdk/data-transfer/ Admin Data Transfer API Reference> for @DataTransferTransfersInsert@.
module Network.Google.Resource.DataTransfer.Transfers.Insert
    (
    -- * REST Resource
      TransfersInsertResource

    -- * Creating a Request
    , transfersInsert'
    , TransfersInsert'

    -- * Request Lenses
    , tiQuotaUser
    , tiPrettyPrint
    , tiUserIP
    , tiPayload
    , tiKey
    , tiOAuthToken
    , tiFields
    ) where

import           Network.Google.DataTransfer.Types
import           Network.Google.Prelude

-- | A resource alias for @DataTransferTransfersInsert@ which the
-- 'TransfersInsert'' request conforms to.
type TransfersInsertResource =
     "transfers" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "fields" Text :>
               QueryParam "key" AuthKey :>
                 QueryParam "oauth_token" OAuthToken :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] DataTransfer :>
                       Post '[JSON] DataTransfer

-- | Inserts a data transfer request.
--
-- /See:/ 'transfersInsert'' smart constructor.
data TransfersInsert' = TransfersInsert'
    { _tiQuotaUser   :: !(Maybe Text)
    , _tiPrettyPrint :: !Bool
    , _tiUserIP      :: !(Maybe Text)
    , _tiPayload     :: !DataTransfer
    , _tiKey         :: !(Maybe AuthKey)
    , _tiOAuthToken  :: !(Maybe OAuthToken)
    , _tiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TransfersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiQuotaUser'
--
-- * 'tiPrettyPrint'
--
-- * 'tiUserIP'
--
-- * 'tiPayload'
--
-- * 'tiKey'
--
-- * 'tiOAuthToken'
--
-- * 'tiFields'
transfersInsert'
    :: DataTransfer -- ^ 'payload'
    -> TransfersInsert'
transfersInsert' pTiPayload_ =
    TransfersInsert'
    { _tiQuotaUser = Nothing
    , _tiPrettyPrint = True
    , _tiUserIP = Nothing
    , _tiPayload = pTiPayload_
    , _tiKey = Nothing
    , _tiOAuthToken = Nothing
    , _tiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tiQuotaUser :: Lens' TransfersInsert' (Maybe Text)
tiQuotaUser
  = lens _tiQuotaUser (\ s a -> s{_tiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tiPrettyPrint :: Lens' TransfersInsert' Bool
tiPrettyPrint
  = lens _tiPrettyPrint
      (\ s a -> s{_tiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tiUserIP :: Lens' TransfersInsert' (Maybe Text)
tiUserIP = lens _tiUserIP (\ s a -> s{_tiUserIP = a})

-- | Multipart request metadata.
tiPayload :: Lens' TransfersInsert' DataTransfer
tiPayload
  = lens _tiPayload (\ s a -> s{_tiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiKey :: Lens' TransfersInsert' (Maybe AuthKey)
tiKey = lens _tiKey (\ s a -> s{_tiKey = a})

-- | OAuth 2.0 token for the current user.
tiOAuthToken :: Lens' TransfersInsert' (Maybe OAuthToken)
tiOAuthToken
  = lens _tiOAuthToken (\ s a -> s{_tiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tiFields :: Lens' TransfersInsert' (Maybe Text)
tiFields = lens _tiFields (\ s a -> s{_tiFields = a})

instance GoogleAuth TransfersInsert' where
        authKey = tiKey . _Just
        authToken = tiOAuthToken . _Just

instance GoogleRequest TransfersInsert' where
        type Rs TransfersInsert' = DataTransfer
        request = requestWith dataTransferRequest
        requestWith rq TransfersInsert'{..}
          = go _tiQuotaUser (Just _tiPrettyPrint) _tiUserIP
              _tiFields
              _tiKey
              _tiOAuthToken
              (Just AltJSON)
              _tiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy TransfersInsertResource)
                      rq
