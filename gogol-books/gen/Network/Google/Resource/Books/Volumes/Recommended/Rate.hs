{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Volumes.Recommended.Rate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Rate a recommended book for the current user.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksVolumesRecommendedRate@.
module Network.Google.Resource.Books.Volumes.Recommended.Rate
    (
    -- * REST Resource
      VolumesRecommendedRateResource

    -- * Creating a Request
    , volumesRecommendedRate'
    , VolumesRecommendedRate'

    -- * Request Lenses
    , vrrQuotaUser
    , vrrRating
    , vrrPrettyPrint
    , vrrUserIP
    , vrrLocale
    , vrrKey
    , vrrVolumeId
    , vrrSource
    , vrrOAuthToken
    , vrrFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksVolumesRecommendedRate@ which the
-- 'VolumesRecommendedRate'' request conforms to.
type VolumesRecommendedRateResource =
     "volumes" :>
       "recommended" :>
         "rate" :>
           QueryParam "rating" VolumesRecommendedRateRating :>
             QueryParam "volumeId" Text :>
               QueryParam "locale" Text :>
                 QueryParam "source" Text :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Post '[JSON]
                                   BooksVolumesRecommendedRateResponse

-- | Rate a recommended book for the current user.
--
-- /See:/ 'volumesRecommendedRate'' smart constructor.
data VolumesRecommendedRate' = VolumesRecommendedRate'
    { _vrrQuotaUser   :: !(Maybe Text)
    , _vrrRating      :: !VolumesRecommendedRateRating
    , _vrrPrettyPrint :: !Bool
    , _vrrUserIP      :: !(Maybe Text)
    , _vrrLocale      :: !(Maybe Text)
    , _vrrKey         :: !(Maybe Key)
    , _vrrVolumeId    :: !Text
    , _vrrSource      :: !(Maybe Text)
    , _vrrOAuthToken  :: !(Maybe OAuthToken)
    , _vrrFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'VolumesRecommendedRate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vrrQuotaUser'
--
-- * 'vrrRating'
--
-- * 'vrrPrettyPrint'
--
-- * 'vrrUserIP'
--
-- * 'vrrLocale'
--
-- * 'vrrKey'
--
-- * 'vrrVolumeId'
--
-- * 'vrrSource'
--
-- * 'vrrOAuthToken'
--
-- * 'vrrFields'
volumesRecommendedRate'
    :: VolumesRecommendedRateRating -- ^ 'rating'
    -> Text -- ^ 'volumeId'
    -> VolumesRecommendedRate'
volumesRecommendedRate' pVrrRating_ pVrrVolumeId_ =
    VolumesRecommendedRate'
    { _vrrQuotaUser = Nothing
    , _vrrRating = pVrrRating_
    , _vrrPrettyPrint = True
    , _vrrUserIP = Nothing
    , _vrrLocale = Nothing
    , _vrrKey = Nothing
    , _vrrVolumeId = pVrrVolumeId_
    , _vrrSource = Nothing
    , _vrrOAuthToken = Nothing
    , _vrrFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vrrQuotaUser :: Lens' VolumesRecommendedRate' (Maybe Text)
vrrQuotaUser
  = lens _vrrQuotaUser (\ s a -> s{_vrrQuotaUser = a})

-- | Rating to be given to the volume.
vrrRating :: Lens' VolumesRecommendedRate' VolumesRecommendedRateRating
vrrRating
  = lens _vrrRating (\ s a -> s{_vrrRating = a})

-- | Returns response with indentations and line breaks.
vrrPrettyPrint :: Lens' VolumesRecommendedRate' Bool
vrrPrettyPrint
  = lens _vrrPrettyPrint
      (\ s a -> s{_vrrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vrrUserIP :: Lens' VolumesRecommendedRate' (Maybe Text)
vrrUserIP
  = lens _vrrUserIP (\ s a -> s{_vrrUserIP = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
vrrLocale :: Lens' VolumesRecommendedRate' (Maybe Text)
vrrLocale
  = lens _vrrLocale (\ s a -> s{_vrrLocale = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vrrKey :: Lens' VolumesRecommendedRate' (Maybe Key)
vrrKey = lens _vrrKey (\ s a -> s{_vrrKey = a})

-- | ID of the source volume.
vrrVolumeId :: Lens' VolumesRecommendedRate' Text
vrrVolumeId
  = lens _vrrVolumeId (\ s a -> s{_vrrVolumeId = a})

-- | String to identify the originator of this request.
vrrSource :: Lens' VolumesRecommendedRate' (Maybe Text)
vrrSource
  = lens _vrrSource (\ s a -> s{_vrrSource = a})

-- | OAuth 2.0 token for the current user.
vrrOAuthToken :: Lens' VolumesRecommendedRate' (Maybe OAuthToken)
vrrOAuthToken
  = lens _vrrOAuthToken
      (\ s a -> s{_vrrOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vrrFields :: Lens' VolumesRecommendedRate' (Maybe Text)
vrrFields
  = lens _vrrFields (\ s a -> s{_vrrFields = a})

instance GoogleAuth VolumesRecommendedRate' where
        authKey = vrrKey . _Just
        authToken = vrrOAuthToken . _Just

instance GoogleRequest VolumesRecommendedRate' where
        type Rs VolumesRecommendedRate' =
             BooksVolumesRecommendedRateResponse
        request = requestWithRoute defReq booksURL
        requestWithRoute r u VolumesRecommendedRate'{..}
          = go (Just _vrrRating) (Just _vrrVolumeId) _vrrLocale
              _vrrSource
              _vrrQuotaUser
              (Just _vrrPrettyPrint)
              _vrrUserIP
              _vrrFields
              _vrrKey
              _vrrOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VolumesRecommendedRateResource)
                      r
                      u
