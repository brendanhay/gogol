{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidpublisher.Inappproducts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all the in-app products for an Android app, both subscriptions and
-- managed in-app products..
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @androidpublisher.inappproducts.list@.
module Network.Google.API.Androidpublisher.Inappproducts.List
    (
    -- * REST Resource
      InappproductsListAPI

    -- * Creating a Request
    , inappproductsList'
    , InappproductsList'

    -- * Request Lenses
    , ilQuotaUser
    , ilPrettyPrint
    , ilPackageName
    , ilUserIp
    , ilToken
    , ilKey
    , ilOauthToken
    , ilStartIndex
    , ilMaxResults
    , ilFields
    , ilAlt
    ) where

import           Network.Google.Play.Developer.Types
import           Network.Google.Prelude

-- | A resource alias for androidpublisher.inappproducts.list which the
-- 'InappproductsList'' request conforms to.
type InappproductsListAPI =
     Capture "packageName" Text :>
       "inappproducts" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "token" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "startIndex" Word32 :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] InappproductsListResponse

-- | List all the in-app products for an Android app, both subscriptions and
-- managed in-app products..
--
-- /See:/ 'inappproductsList'' smart constructor.
data InappproductsList' = InappproductsList'
    { _ilQuotaUser   :: !(Maybe Text)
    , _ilPrettyPrint :: !Bool
    , _ilPackageName :: !Text
    , _ilUserIp      :: !(Maybe Text)
    , _ilToken       :: !(Maybe Text)
    , _ilKey         :: !(Maybe Text)
    , _ilOauthToken  :: !(Maybe Text)
    , _ilStartIndex  :: !(Maybe Word32)
    , _ilMaxResults  :: !(Maybe Word32)
    , _ilFields      :: !(Maybe Text)
    , _ilAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InappproductsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ilQuotaUser'
--
-- * 'ilPrettyPrint'
--
-- * 'ilPackageName'
--
-- * 'ilUserIp'
--
-- * 'ilToken'
--
-- * 'ilKey'
--
-- * 'ilOauthToken'
--
-- * 'ilStartIndex'
--
-- * 'ilMaxResults'
--
-- * 'ilFields'
--
-- * 'ilAlt'
inappproductsList'
    :: Text -- ^ 'packageName'
    -> InappproductsList'
inappproductsList' pIlPackageName_ =
    InappproductsList'
    { _ilQuotaUser = Nothing
    , _ilPrettyPrint = True
    , _ilPackageName = pIlPackageName_
    , _ilUserIp = Nothing
    , _ilToken = Nothing
    , _ilKey = Nothing
    , _ilOauthToken = Nothing
    , _ilStartIndex = Nothing
    , _ilMaxResults = Nothing
    , _ilFields = Nothing
    , _ilAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ilQuotaUser :: Lens' InappproductsList' (Maybe Text)
ilQuotaUser
  = lens _ilQuotaUser (\ s a -> s{_ilQuotaUser = a})

-- | Returns response with indentations and line breaks.
ilPrettyPrint :: Lens' InappproductsList' Bool
ilPrettyPrint
  = lens _ilPrettyPrint
      (\ s a -> s{_ilPrettyPrint = a})

-- | Unique identifier for the Android app with in-app products; for example,
-- \"com.spiffygame\".
ilPackageName :: Lens' InappproductsList' Text
ilPackageName
  = lens _ilPackageName
      (\ s a -> s{_ilPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ilUserIp :: Lens' InappproductsList' (Maybe Text)
ilUserIp = lens _ilUserIp (\ s a -> s{_ilUserIp = a})

ilToken :: Lens' InappproductsList' (Maybe Text)
ilToken = lens _ilToken (\ s a -> s{_ilToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ilKey :: Lens' InappproductsList' (Maybe Text)
ilKey = lens _ilKey (\ s a -> s{_ilKey = a})

-- | OAuth 2.0 token for the current user.
ilOauthToken :: Lens' InappproductsList' (Maybe Text)
ilOauthToken
  = lens _ilOauthToken (\ s a -> s{_ilOauthToken = a})

ilStartIndex :: Lens' InappproductsList' (Maybe Word32)
ilStartIndex
  = lens _ilStartIndex (\ s a -> s{_ilStartIndex = a})

ilMaxResults :: Lens' InappproductsList' (Maybe Word32)
ilMaxResults
  = lens _ilMaxResults (\ s a -> s{_ilMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ilFields :: Lens' InappproductsList' (Maybe Text)
ilFields = lens _ilFields (\ s a -> s{_ilFields = a})

-- | Data format for the response.
ilAlt :: Lens' InappproductsList' Alt
ilAlt = lens _ilAlt (\ s a -> s{_ilAlt = a})

instance GoogleRequest InappproductsList' where
        type Rs InappproductsList' =
             InappproductsListResponse
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u InappproductsList'{..}
          = go _ilQuotaUser (Just _ilPrettyPrint)
              _ilPackageName
              _ilUserIp
              _ilToken
              _ilKey
              _ilOauthToken
              _ilStartIndex
              _ilMaxResults
              _ilFields
              (Just _ilAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InappproductsListAPI)
                      r
                      u
