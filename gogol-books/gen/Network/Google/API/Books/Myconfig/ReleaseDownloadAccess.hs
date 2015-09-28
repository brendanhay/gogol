{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Books.Myconfig.ReleaseDownloadAccess
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Release downloaded content access restriction.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.myconfig.releaseDownloadAccess@.
module Network.Google.API.Books.Myconfig.ReleaseDownloadAccess
    (
    -- * REST Resource
      MyconfigReleaseDownloadAccessAPI

    -- * Creating a Request
    , myconfigReleaseDownloadAccess'
    , MyconfigReleaseDownloadAccess'

    -- * Request Lenses
    , mrdaQuotaUser
    , mrdaPrettyPrint
    , mrdaCpksver
    , mrdaUserIp
    , mrdaLocale
    , mrdaVolumeIds
    , mrdaKey
    , mrdaSource
    , mrdaOauthToken
    , mrdaFields
    , mrdaAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for books.myconfig.releaseDownloadAccess which the
-- 'MyconfigReleaseDownloadAccess'' request conforms to.
type MyconfigReleaseDownloadAccessAPI =
     "myconfig" :>
       "releaseDownloadAccess" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "cpksver" Text :>
               QueryParam "userIp" Text :>
                 QueryParam "locale" Text :>
                   QueryParam "volumeIds" Text :>
                     QueryParam "key" Text :>
                       QueryParam "source" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Post '[JSON] DownloadAccesses

-- | Release downloaded content access restriction.
--
-- /See:/ 'myconfigReleaseDownloadAccess'' smart constructor.
data MyconfigReleaseDownloadAccess' = MyconfigReleaseDownloadAccess'
    { _mrdaQuotaUser   :: !(Maybe Text)
    , _mrdaPrettyPrint :: !Bool
    , _mrdaCpksver     :: !Text
    , _mrdaUserIp      :: !(Maybe Text)
    , _mrdaLocale      :: !(Maybe Text)
    , _mrdaVolumeIds   :: !Text
    , _mrdaKey         :: !(Maybe Text)
    , _mrdaSource      :: !(Maybe Text)
    , _mrdaOauthToken  :: !(Maybe Text)
    , _mrdaFields      :: !(Maybe Text)
    , _mrdaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyconfigReleaseDownloadAccess'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrdaQuotaUser'
--
-- * 'mrdaPrettyPrint'
--
-- * 'mrdaCpksver'
--
-- * 'mrdaUserIp'
--
-- * 'mrdaLocale'
--
-- * 'mrdaVolumeIds'
--
-- * 'mrdaKey'
--
-- * 'mrdaSource'
--
-- * 'mrdaOauthToken'
--
-- * 'mrdaFields'
--
-- * 'mrdaAlt'
myconfigReleaseDownloadAccess'
    :: Text -- ^ 'cpksver'
    -> Text -- ^ 'volumeIds'
    -> MyconfigReleaseDownloadAccess'
myconfigReleaseDownloadAccess' pMrdaCpksver_ pMrdaVolumeIds_ =
    MyconfigReleaseDownloadAccess'
    { _mrdaQuotaUser = Nothing
    , _mrdaPrettyPrint = True
    , _mrdaCpksver = pMrdaCpksver_
    , _mrdaUserIp = Nothing
    , _mrdaLocale = Nothing
    , _mrdaVolumeIds = pMrdaVolumeIds_
    , _mrdaKey = Nothing
    , _mrdaSource = Nothing
    , _mrdaOauthToken = Nothing
    , _mrdaFields = Nothing
    , _mrdaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mrdaQuotaUser :: Lens' MyconfigReleaseDownloadAccess' (Maybe Text)
mrdaQuotaUser
  = lens _mrdaQuotaUser
      (\ s a -> s{_mrdaQuotaUser = a})

-- | Returns response with indentations and line breaks.
mrdaPrettyPrint :: Lens' MyconfigReleaseDownloadAccess' Bool
mrdaPrettyPrint
  = lens _mrdaPrettyPrint
      (\ s a -> s{_mrdaPrettyPrint = a})

-- | The device\/version ID from which to release the restriction.
mrdaCpksver :: Lens' MyconfigReleaseDownloadAccess' Text
mrdaCpksver
  = lens _mrdaCpksver (\ s a -> s{_mrdaCpksver = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mrdaUserIp :: Lens' MyconfigReleaseDownloadAccess' (Maybe Text)
mrdaUserIp
  = lens _mrdaUserIp (\ s a -> s{_mrdaUserIp = a})

-- | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
mrdaLocale :: Lens' MyconfigReleaseDownloadAccess' (Maybe Text)
mrdaLocale
  = lens _mrdaLocale (\ s a -> s{_mrdaLocale = a})

-- | The volume(s) to release restrictions for.
mrdaVolumeIds :: Lens' MyconfigReleaseDownloadAccess' Text
mrdaVolumeIds
  = lens _mrdaVolumeIds
      (\ s a -> s{_mrdaVolumeIds = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mrdaKey :: Lens' MyconfigReleaseDownloadAccess' (Maybe Text)
mrdaKey = lens _mrdaKey (\ s a -> s{_mrdaKey = a})

-- | String to identify the originator of this request.
mrdaSource :: Lens' MyconfigReleaseDownloadAccess' (Maybe Text)
mrdaSource
  = lens _mrdaSource (\ s a -> s{_mrdaSource = a})

-- | OAuth 2.0 token for the current user.
mrdaOauthToken :: Lens' MyconfigReleaseDownloadAccess' (Maybe Text)
mrdaOauthToken
  = lens _mrdaOauthToken
      (\ s a -> s{_mrdaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mrdaFields :: Lens' MyconfigReleaseDownloadAccess' (Maybe Text)
mrdaFields
  = lens _mrdaFields (\ s a -> s{_mrdaFields = a})

-- | Data format for the response.
mrdaAlt :: Lens' MyconfigReleaseDownloadAccess' Alt
mrdaAlt = lens _mrdaAlt (\ s a -> s{_mrdaAlt = a})

instance GoogleRequest MyconfigReleaseDownloadAccess'
         where
        type Rs MyconfigReleaseDownloadAccess' =
             DownloadAccesses
        request = requestWithRoute defReq booksURL
        requestWithRoute r u
          MyconfigReleaseDownloadAccess'{..}
          = go _mrdaQuotaUser (Just _mrdaPrettyPrint)
              (Just _mrdaCpksver)
              _mrdaUserIp
              _mrdaLocale
              (Just _mrdaVolumeIds)
              _mrdaKey
              _mrdaSource
              _mrdaOauthToken
              _mrdaFields
              (Just _mrdaAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MyconfigReleaseDownloadAccessAPI)
                      r
                      u
