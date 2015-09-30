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
-- Module      : Network.Google.Resource.Androidpublisher.Inappproducts.Batch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--

--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherInappproductsBatch@.
module Network.Google.Resource.Androidpublisher.Inappproducts.Batch
    (
    -- * REST Resource
      InappproductsBatchResource

    -- * Creating a Request
    , inappproductsBatch'
    , InappproductsBatch'

    -- * Request Lenses
    , ibQuotaUser
    , ibPrettyPrint
    , ibUserIp
    , ibKey
    , ibOauthToken
    , ibFields
    , ibAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherInappproductsBatch@ which the
-- 'InappproductsBatch'' request conforms to.
type InappproductsBatchResource =
     "inappproducts" :>
       "batch" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] InappproductsBatchResponse

--
-- /See:/ 'inappproductsBatch'' smart constructor.
data InappproductsBatch' = InappproductsBatch'
    { _ibQuotaUser   :: !(Maybe Text)
    , _ibPrettyPrint :: !Bool
    , _ibUserIp      :: !(Maybe Text)
    , _ibKey         :: !(Maybe Text)
    , _ibOauthToken  :: !(Maybe Text)
    , _ibFields      :: !(Maybe Text)
    , _ibAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsBatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ibQuotaUser'
--
-- * 'ibPrettyPrint'
--
-- * 'ibUserIp'
--
-- * 'ibKey'
--
-- * 'ibOauthToken'
--
-- * 'ibFields'
--
-- * 'ibAlt'
inappproductsBatch'
    :: InappproductsBatch'
inappproductsBatch' =
    InappproductsBatch'
    { _ibQuotaUser = Nothing
    , _ibPrettyPrint = True
    , _ibUserIp = Nothing
    , _ibKey = Nothing
    , _ibOauthToken = Nothing
    , _ibFields = Nothing
    , _ibAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ibQuotaUser :: Lens' InappproductsBatch' (Maybe Text)
ibQuotaUser
  = lens _ibQuotaUser (\ s a -> s{_ibQuotaUser = a})

-- | Returns response with indentations and line breaks.
ibPrettyPrint :: Lens' InappproductsBatch' Bool
ibPrettyPrint
  = lens _ibPrettyPrint
      (\ s a -> s{_ibPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ibUserIp :: Lens' InappproductsBatch' (Maybe Text)
ibUserIp = lens _ibUserIp (\ s a -> s{_ibUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ibKey :: Lens' InappproductsBatch' (Maybe Text)
ibKey = lens _ibKey (\ s a -> s{_ibKey = a})

-- | OAuth 2.0 token for the current user.
ibOauthToken :: Lens' InappproductsBatch' (Maybe Text)
ibOauthToken
  = lens _ibOauthToken (\ s a -> s{_ibOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ibFields :: Lens' InappproductsBatch' (Maybe Text)
ibFields = lens _ibFields (\ s a -> s{_ibFields = a})

-- | Data format for the response.
ibAlt :: Lens' InappproductsBatch' Alt
ibAlt = lens _ibAlt (\ s a -> s{_ibAlt = a})

instance GoogleRequest InappproductsBatch' where
        type Rs InappproductsBatch' =
             InappproductsBatchResponse
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u InappproductsBatch'{..}
          = go _ibQuotaUser (Just _ibPrettyPrint) _ibUserIp
              _ibKey
              _ibOauthToken
              _ibFields
              (Just _ibAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InappproductsBatchResource)
                      r
                      u
