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
-- Module      : Network.Google.Resource.Content.Accountstatuses.Custombatch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @ContentAccountstatusesCustombatch@.
module Network.Google.Resource.Content.Accountstatuses.Custombatch
    (
    -- * REST Resource
      AccountstatusesCustombatchResource

    -- * Creating a Request
    , accountstatusesCustombatch'
    , AccountstatusesCustombatch'

    -- * Request Lenses
    , aaQuotaUser
    , aaPrettyPrint
    , aaUserIP
    , aaPayload
    , aaKey
    , aaOAuthToken
    , aaFields
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @ContentAccountstatusesCustombatch@ method which the
-- 'AccountstatusesCustombatch'' request conforms to.
type AccountstatusesCustombatchResource =
     "accountstatuses" :>
       "batch" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   Header "Authorization" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] AccountstatusesCustomBatchRequest :>
                         Post '[JSON] AccountstatusesCustomBatchResponse

--
-- /See:/ 'accountstatusesCustombatch'' smart constructor.
data AccountstatusesCustombatch' = AccountstatusesCustombatch'
    { _aaQuotaUser   :: !(Maybe Text)
    , _aaPrettyPrint :: !Bool
    , _aaUserIP      :: !(Maybe Text)
    , _aaPayload     :: !AccountstatusesCustomBatchRequest
    , _aaKey         :: !(Maybe AuthKey)
    , _aaOAuthToken  :: !(Maybe OAuthToken)
    , _aaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountstatusesCustombatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaQuotaUser'
--
-- * 'aaPrettyPrint'
--
-- * 'aaUserIP'
--
-- * 'aaPayload'
--
-- * 'aaKey'
--
-- * 'aaOAuthToken'
--
-- * 'aaFields'
accountstatusesCustombatch'
    :: AccountstatusesCustomBatchRequest -- ^ 'payload'
    -> AccountstatusesCustombatch'
accountstatusesCustombatch' pAaPayload_ =
    AccountstatusesCustombatch'
    { _aaQuotaUser = Nothing
    , _aaPrettyPrint = True
    , _aaUserIP = Nothing
    , _aaPayload = pAaPayload_
    , _aaKey = Nothing
    , _aaOAuthToken = Nothing
    , _aaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aaQuotaUser :: Lens' AccountstatusesCustombatch' (Maybe Text)
aaQuotaUser
  = lens _aaQuotaUser (\ s a -> s{_aaQuotaUser = a})

-- | Returns response with indentations and line breaks.
aaPrettyPrint :: Lens' AccountstatusesCustombatch' Bool
aaPrettyPrint
  = lens _aaPrettyPrint
      (\ s a -> s{_aaPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aaUserIP :: Lens' AccountstatusesCustombatch' (Maybe Text)
aaUserIP = lens _aaUserIP (\ s a -> s{_aaUserIP = a})

-- | Multipart request metadata.
aaPayload :: Lens' AccountstatusesCustombatch' AccountstatusesCustomBatchRequest
aaPayload
  = lens _aaPayload (\ s a -> s{_aaPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aaKey :: Lens' AccountstatusesCustombatch' (Maybe AuthKey)
aaKey = lens _aaKey (\ s a -> s{_aaKey = a})

-- | OAuth 2.0 token for the current user.
aaOAuthToken :: Lens' AccountstatusesCustombatch' (Maybe OAuthToken)
aaOAuthToken
  = lens _aaOAuthToken (\ s a -> s{_aaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aaFields :: Lens' AccountstatusesCustombatch' (Maybe Text)
aaFields = lens _aaFields (\ s a -> s{_aaFields = a})

instance GoogleAuth AccountstatusesCustombatch' where
        _AuthKey = aaKey . _Just
        _AuthToken = aaOAuthToken . _Just

instance GoogleRequest AccountstatusesCustombatch'
         where
        type Rs AccountstatusesCustombatch' =
             AccountstatusesCustomBatchResponse
        request = requestWith shoppingContentRequest
        requestWith rq AccountstatusesCustombatch'{..}
          = go _aaQuotaUser (Just _aaPrettyPrint) _aaUserIP
              _aaFields
              _aaKey
              _aaOAuthToken
              (Just AltJSON)
              _aaPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy AccountstatusesCustombatchResource)
                      rq
