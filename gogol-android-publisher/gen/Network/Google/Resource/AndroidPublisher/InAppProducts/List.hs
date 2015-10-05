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
-- Module      : Network.Google.Resource.AndroidPublisher.InAppProducts.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all the in-app products for an Android app, both subscriptions and
-- managed in-app products..
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherInAppProductsList@.
module Network.Google.Resource.AndroidPublisher.InAppProducts.List
    (
    -- * REST Resource
      InAppProductsListResource

    -- * Creating a Request
    , inAppProductsList'
    , InAppProductsList'

    -- * Request Lenses
    , iaplQuotaUser
    , iaplPrettyPrint
    , iaplPackageName
    , iaplUserIP
    , iaplToken
    , iaplKey
    , iaplOAuthToken
    , iaplStartIndex
    , iaplMaxResults
    , iaplFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherInAppProductsList@ which the
-- 'InAppProductsList'' request conforms to.
type InAppProductsListResource =
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
                             Get '[JSON] InAppProductsListResponse

-- | List all the in-app products for an Android app, both subscriptions and
-- managed in-app products..
--
-- /See:/ 'inAppProductsList'' smart constructor.
data InAppProductsList' = InAppProductsList'
    { _iaplQuotaUser   :: !(Maybe Text)
    , _iaplPrettyPrint :: !Bool
    , _iaplPackageName :: !Text
    , _iaplUserIP      :: !(Maybe Text)
    , _iaplToken       :: !(Maybe Text)
    , _iaplKey         :: !(Maybe Key)
    , _iaplOAuthToken  :: !(Maybe OAuthToken)
    , _iaplStartIndex  :: !(Maybe Word32)
    , _iaplMaxResults  :: !(Maybe Word32)
    , _iaplFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InAppProductsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iaplQuotaUser'
--
-- * 'iaplPrettyPrint'
--
-- * 'iaplPackageName'
--
-- * 'iaplUserIP'
--
-- * 'iaplToken'
--
-- * 'iaplKey'
--
-- * 'iaplOAuthToken'
--
-- * 'iaplStartIndex'
--
-- * 'iaplMaxResults'
--
-- * 'iaplFields'
inAppProductsList'
    :: Text -- ^ 'packageName'
    -> InAppProductsList'
inAppProductsList' pIaplPackageName_ =
    InAppProductsList'
    { _iaplQuotaUser = Nothing
    , _iaplPrettyPrint = True
    , _iaplPackageName = pIaplPackageName_
    , _iaplUserIP = Nothing
    , _iaplToken = Nothing
    , _iaplKey = Nothing
    , _iaplOAuthToken = Nothing
    , _iaplStartIndex = Nothing
    , _iaplMaxResults = Nothing
    , _iaplFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iaplQuotaUser :: Lens' InAppProductsList' (Maybe Text)
iaplQuotaUser
  = lens _iaplQuotaUser
      (\ s a -> s{_iaplQuotaUser = a})

-- | Returns response with indentations and line breaks.
iaplPrettyPrint :: Lens' InAppProductsList' Bool
iaplPrettyPrint
  = lens _iaplPrettyPrint
      (\ s a -> s{_iaplPrettyPrint = a})

-- | Unique identifier for the Android app with in-app products; for example,
-- \"com.spiffygame\".
iaplPackageName :: Lens' InAppProductsList' Text
iaplPackageName
  = lens _iaplPackageName
      (\ s a -> s{_iaplPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iaplUserIP :: Lens' InAppProductsList' (Maybe Text)
iaplUserIP
  = lens _iaplUserIP (\ s a -> s{_iaplUserIP = a})

iaplToken :: Lens' InAppProductsList' (Maybe Text)
iaplToken
  = lens _iaplToken (\ s a -> s{_iaplToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iaplKey :: Lens' InAppProductsList' (Maybe Key)
iaplKey = lens _iaplKey (\ s a -> s{_iaplKey = a})

-- | OAuth 2.0 token for the current user.
iaplOAuthToken :: Lens' InAppProductsList' (Maybe OAuthToken)
iaplOAuthToken
  = lens _iaplOAuthToken
      (\ s a -> s{_iaplOAuthToken = a})

iaplStartIndex :: Lens' InAppProductsList' (Maybe Word32)
iaplStartIndex
  = lens _iaplStartIndex
      (\ s a -> s{_iaplStartIndex = a})

iaplMaxResults :: Lens' InAppProductsList' (Maybe Word32)
iaplMaxResults
  = lens _iaplMaxResults
      (\ s a -> s{_iaplMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
iaplFields :: Lens' InAppProductsList' (Maybe Text)
iaplFields
  = lens _iaplFields (\ s a -> s{_iaplFields = a})

instance GoogleAuth InAppProductsList' where
        authKey = iaplKey . _Just
        authToken = iaplOAuthToken . _Just

instance GoogleRequest InAppProductsList' where
        type Rs InAppProductsList' =
             InAppProductsListResponse
        request = requestWithRoute defReq androidPublisherURL
        requestWithRoute r u InAppProductsList'{..}
          = go _iaplPackageName _iaplToken _iaplStartIndex
              _iaplMaxResults
              _iaplQuotaUser
              (Just _iaplPrettyPrint)
              _iaplUserIP
              _iaplFields
              _iaplKey
              _iaplOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InAppProductsListResource)
                      r
                      u
