{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Books.Volumes.Recommended.Rate
    (
    -- * REST Resource
      VolumesRecommendedRateAPI

    -- * Creating a Request
    , volumesRecommendedRate
    , VolumesRecommendedRate

    -- * Request Lenses
    , vrrQuotaUser
    , vrrRating
    , vrrPrettyPrint
    , vrrUserIp
    , vrrLocale
    , vrrKey
    , vrrVolumeId
    , vrrSource
    , vrrOauthToken
    , vrrFields
    , vrrAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksVolumesRecommendedRate@ which the
-- 'VolumesRecommendedRate' request conforms to.
type VolumesRecommendedRateAPI =
     "volumes" :>
       "recommended" :>
         "rate" :>
           QueryParam "rating" Text :>
             QueryParam "locale" Text :>
               QueryParam "volumeId" Text :>
                 QueryParam "source" Text :>
                   Post '[JSON] BooksVolumesRecommendedRateResponse

-- | Rate a recommended book for the current user.
--
-- /See:/ 'volumesRecommendedRate' smart constructor.
data VolumesRecommendedRate = VolumesRecommendedRate
    { _vrrQuotaUser   :: !(Maybe Text)
    , _vrrRating      :: !Text
    , _vrrPrettyPrint :: !Bool
    , _vrrUserIp      :: !(Maybe Text)
    , _vrrLocale      :: !(Maybe Text)
    , _vrrKey         :: !(Maybe Text)
    , _vrrVolumeId    :: !Text
    , _vrrSource      :: !(Maybe Text)
    , _vrrOauthToken  :: !(Maybe Text)
    , _vrrFields      :: !(Maybe Text)
    , _vrrAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'vrrUserIp'
--
-- * 'vrrLocale'
--
-- * 'vrrKey'
--
-- * 'vrrVolumeId'
--
-- * 'vrrSource'
--
-- * 'vrrOauthToken'
--
-- * 'vrrFields'
--
-- * 'vrrAlt'
volumesRecommendedRate
    :: Text -- ^ 'rating'
    -> Text -- ^ 'volumeId'
    -> VolumesRecommendedRate
volumesRecommendedRate pVrrRating_ pVrrVolumeId_ =
    VolumesRecommendedRate
    { _vrrQuotaUser = Nothing
    , _vrrRating = pVrrRating_
    , _vrrPrettyPrint = True
    , _vrrUserIp = Nothing
    , _vrrLocale = Nothing
    , _vrrKey = Nothing
    , _vrrVolumeId = pVrrVolumeId_
    , _vrrSource = Nothing
    , _vrrOauthToken = Nothing
    , _vrrFields = Nothing
    , _vrrAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vrrQuotaUser :: Lens' VolumesRecommendedRate' (Maybe Text)
vrrQuotaUser
  = lens _vrrQuotaUser (\ s a -> s{_vrrQuotaUser = a})

-- | Rating to be given to the volume.
vrrRating :: Lens' VolumesRecommendedRate' Text
vrrRating
  = lens _vrrRating (\ s a -> s{_vrrRating = a})

-- | Returns response with indentations and line breaks.
vrrPrettyPrint :: Lens' VolumesRecommendedRate' Bool
vrrPrettyPrint
  = lens _vrrPrettyPrint
      (\ s a -> s{_vrrPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vrrUserIp :: Lens' VolumesRecommendedRate' (Maybe Text)
vrrUserIp
  = lens _vrrUserIp (\ s a -> s{_vrrUserIp = a})

-- | ISO-639-1 language and ISO-3166-1 country code. Ex: \'en_US\'. Used for
-- generating recommendations.
vrrLocale :: Lens' VolumesRecommendedRate' (Maybe Text)
vrrLocale
  = lens _vrrLocale (\ s a -> s{_vrrLocale = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vrrKey :: Lens' VolumesRecommendedRate' (Maybe Text)
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
vrrOauthToken :: Lens' VolumesRecommendedRate' (Maybe Text)
vrrOauthToken
  = lens _vrrOauthToken
      (\ s a -> s{_vrrOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vrrFields :: Lens' VolumesRecommendedRate' (Maybe Text)
vrrFields
  = lens _vrrFields (\ s a -> s{_vrrFields = a})

-- | Data format for the response.
vrrAlt :: Lens' VolumesRecommendedRate' Text
vrrAlt = lens _vrrAlt (\ s a -> s{_vrrAlt = a})

instance GoogleRequest VolumesRecommendedRate' where
        type Rs VolumesRecommendedRate' =
             BooksVolumesRecommendedRateResponse
        request = requestWithRoute defReq booksURL
        requestWithRoute r u VolumesRecommendedRate{..}
          = go _vrrQuotaUser (Just _vrrRating) _vrrPrettyPrint
              _vrrUserIp
              _vrrLocale
              _vrrKey
              (Just _vrrVolumeId)
              _vrrSource
              _vrrOauthToken
              _vrrFields
              _vrrAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VolumesRecommendedRateAPI)
                      r
                      u
