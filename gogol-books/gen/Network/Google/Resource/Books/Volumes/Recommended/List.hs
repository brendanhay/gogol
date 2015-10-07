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
-- Module      : Network.Google.Resource.Books.Volumes.Recommended.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return a list of recommended books for the current user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksVolumesRecommendedList@.
module Network.Google.Resource.Books.Volumes.Recommended.List
    (
    -- * REST Resource
      VolumesRecommendedListResource

    -- * Creating a Request
    , volumesRecommendedList'
    , VolumesRecommendedList'

    -- * Request Lenses
    , vrlQuotaUser
    , vrlPrettyPrint
    , vrlUserIP
    , vrlLocale
    , vrlMaxAllowedMaturityRating
    , vrlKey
    , vrlSource
    , vrlOAuthToken
    , vrlFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksVolumesRecommendedList@ method which the
-- 'VolumesRecommendedList'' request conforms to.
type VolumesRecommendedListResource =
     "volumes" :>
       "recommended" :>
         QueryParam "locale" Text :>
           QueryParam "maxAllowedMaturityRating"
             VolumesRecommendedListMaxAllowedMaturityRating
             :>
             QueryParam "source" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Volumes

-- | Return a list of recommended books for the current user.
--
-- /See:/ 'volumesRecommendedList'' smart constructor.
data VolumesRecommendedList' = VolumesRecommendedList'
    { _vrlQuotaUser                :: !(Maybe Text)
    , _vrlPrettyPrint              :: !Bool
    , _vrlUserIP                   :: !(Maybe Text)
    , _vrlLocale                   :: !(Maybe Text)
    , _vrlMaxAllowedMaturityRating :: !(Maybe VolumesRecommendedListMaxAllowedMaturityRating)
    , _vrlKey                      :: !(Maybe AuthKey)
    , _vrlSource                   :: !(Maybe Text)
    , _vrlOAuthToken               :: !(Maybe OAuthToken)
    , _vrlFields                   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumesRecommendedList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrlQuotaUser'
--
-- * 'vrlPrettyPrint'
--
-- * 'vrlUserIP'
--
-- * 'vrlLocale'
--
-- * 'vrlMaxAllowedMaturityRating'
--
-- * 'vrlKey'
--
-- * 'vrlSource'
--
-- * 'vrlOAuthToken'
--
-- * 'vrlFields'
volumesRecommendedList'
    :: VolumesRecommendedList'
volumesRecommendedList' =
    VolumesRecommendedList'
    { _vrlQuotaUser = Nothing
    , _vrlPrettyPrint = True
    , _vrlUserIP = Nothing
    , _vrlLocale = Nothing
    , _vrlMaxAllowedMaturityRating = Nothing
    , _vrlKey = Nothing
    , _vrlSource = Nothing
    , _vrlOAuthToken = Nothing
    , _vrlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vrlQuotaUser :: Lens' VolumesRecommendedList' (Maybe Text)
vrlQuotaUser
  = lens _vrlQuotaUser (\ s a -> s{_vrlQuotaUser = a})

-- | Returns response with indentations and line breaks.
vrlPrettyPrint :: Lens' VolumesRecommendedList' Bool
vrlPrettyPrint
  = lens _vrlPrettyPrint
      (\ s a -> s{_vrlPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vrlUserIP :: Lens' VolumesRecommendedList' (Maybe Text)
vrlUserIP
  = lens _vrlUserIP (\ s a -> s{_vrlUserIP = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
vrlLocale :: Lens' VolumesRecommendedList' (Maybe Text)
vrlLocale
  = lens _vrlLocale (\ s a -> s{_vrlLocale = a})

-- | The maximum allowed maturity rating of returned recommendations. Books
-- with a higher maturity rating are filtered out.
vrlMaxAllowedMaturityRating :: Lens' VolumesRecommendedList' (Maybe VolumesRecommendedListMaxAllowedMaturityRating)
vrlMaxAllowedMaturityRating
  = lens _vrlMaxAllowedMaturityRating
      (\ s a -> s{_vrlMaxAllowedMaturityRating = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vrlKey :: Lens' VolumesRecommendedList' (Maybe AuthKey)
vrlKey = lens _vrlKey (\ s a -> s{_vrlKey = a})

-- | String to identify the originator of this request.
vrlSource :: Lens' VolumesRecommendedList' (Maybe Text)
vrlSource
  = lens _vrlSource (\ s a -> s{_vrlSource = a})

-- | OAuth 2.0 token for the current user.
vrlOAuthToken :: Lens' VolumesRecommendedList' (Maybe OAuthToken)
vrlOAuthToken
  = lens _vrlOAuthToken
      (\ s a -> s{_vrlOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vrlFields :: Lens' VolumesRecommendedList' (Maybe Text)
vrlFields
  = lens _vrlFields (\ s a -> s{_vrlFields = a})

instance GoogleAuth VolumesRecommendedList' where
        _AuthKey = vrlKey . _Just
        _AuthToken = vrlOAuthToken . _Just

instance GoogleRequest VolumesRecommendedList' where
        type Rs VolumesRecommendedList' = Volumes
        request = requestWith booksRequest
        requestWith rq VolumesRecommendedList'{..}
          = go _vrlLocale _vrlMaxAllowedMaturityRating
              _vrlSource
              _vrlQuotaUser
              (Just _vrlPrettyPrint)
              _vrlUserIP
              _vrlFields
              _vrlKey
              _vrlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy VolumesRecommendedListResource)
                      rq
