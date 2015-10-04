{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidPublisher.Inappproducts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all the in-app products for an Android app, both subscriptions and
-- managed in-app products..
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherInappproductsList@.
module Network.Google.Resource.AndroidPublisher.Inappproducts.List
    (
    -- * REST Resource
      InappproductsListResource

    -- * Creating a Request
    , inappproductsList'
    , InappproductsList'

    -- * Request Lenses
    , ilQuotaUser
    , ilPrettyPrint
    , ilPackageName
    , ilUserIP
    , ilToken
    , ilKey
    , ilOAuthToken
    , ilStartIndex
    , ilMaxResults
    , ilFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherInappproductsList@ which the
-- 'InappproductsList'' request conforms to.
type InappproductsListResource =
     Capture "packageName" Text :>
       "inappproducts" :>
         QueryParam "token" Text :>
           QueryParam "startIndex" Word32 :>
             QueryParam "maxResults" Word32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] InappproductsListResponse

-- | List all the in-app products for an Android app, both subscriptions and
-- managed in-app products..
--
-- /See:/ 'inappproductsList'' smart constructor.
data InappproductsList' = InappproductsList'
    { _ilQuotaUser   :: !(Maybe Text)
    , _ilPrettyPrint :: !Bool
    , _ilPackageName :: !Text
    , _ilUserIP      :: !(Maybe Text)
    , _ilToken       :: !(Maybe Text)
    , _ilKey         :: !(Maybe Key)
    , _ilOAuthToken  :: !(Maybe OAuthToken)
    , _ilStartIndex  :: !(Maybe Word32)
    , _ilMaxResults  :: !(Maybe Word32)
    , _ilFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'ilUserIP'
--
-- * 'ilToken'
--
-- * 'ilKey'
--
-- * 'ilOAuthToken'
--
-- * 'ilStartIndex'
--
-- * 'ilMaxResults'
--
-- * 'ilFields'
inappproductsList'
    :: Text -- ^ 'packageName'
    -> InappproductsList'
inappproductsList' pIlPackageName_ =
    InappproductsList'
    { _ilQuotaUser = Nothing
    , _ilPrettyPrint = True
    , _ilPackageName = pIlPackageName_
    , _ilUserIP = Nothing
    , _ilToken = Nothing
    , _ilKey = Nothing
    , _ilOAuthToken = Nothing
    , _ilStartIndex = Nothing
    , _ilMaxResults = Nothing
    , _ilFields = Nothing
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
ilUserIP :: Lens' InappproductsList' (Maybe Text)
ilUserIP = lens _ilUserIP (\ s a -> s{_ilUserIP = a})

ilToken :: Lens' InappproductsList' (Maybe Text)
ilToken = lens _ilToken (\ s a -> s{_ilToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ilKey :: Lens' InappproductsList' (Maybe Key)
ilKey = lens _ilKey (\ s a -> s{_ilKey = a})

-- | OAuth 2.0 token for the current user.
ilOAuthToken :: Lens' InappproductsList' (Maybe OAuthToken)
ilOAuthToken
  = lens _ilOAuthToken (\ s a -> s{_ilOAuthToken = a})

ilStartIndex :: Lens' InappproductsList' (Maybe Word32)
ilStartIndex
  = lens _ilStartIndex (\ s a -> s{_ilStartIndex = a})

ilMaxResults :: Lens' InappproductsList' (Maybe Word32)
ilMaxResults
  = lens _ilMaxResults (\ s a -> s{_ilMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
ilFields :: Lens' InappproductsList' (Maybe Text)
ilFields = lens _ilFields (\ s a -> s{_ilFields = a})

instance GoogleAuth InappproductsList' where
        authKey = ilKey . _Just
        authToken = ilOAuthToken . _Just

instance GoogleRequest InappproductsList' where
        type Rs InappproductsList' =
             InappproductsListResponse
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u InappproductsList'{..}
          = go _ilPackageName _ilToken _ilStartIndex
              _ilMaxResults
              _ilQuotaUser
              (Just _ilPrettyPrint)
              _ilUserIP
              _ilFields
              _ilKey
              _ilOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InappproductsListResource)
                      r
                      u
