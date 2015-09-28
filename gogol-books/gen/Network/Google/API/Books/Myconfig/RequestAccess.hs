{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Books.Myconfig.RequestAccess
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Request concurrent and download access restrictions.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.myconfig.requestAccess@.
module Network.Google.API.Books.Myconfig.RequestAccess
    (
    -- * REST Resource
      MyconfigRequestAccessAPI

    -- * Creating a Request
    , myconfigRequestAccess'
    , MyconfigRequestAccess'

    -- * Request Lenses
    , mraQuotaUser
    , mraPrettyPrint
    , mraCpksver
    , mraUserIp
    , mraLocale
    , mraLicenseTypes
    , mraKey
    , mraVolumeId
    , mraSource
    , mraOauthToken
    , mraFields
    , mraNonce
    , mraAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for books.myconfig.requestAccess which the
-- 'MyconfigRequestAccess'' request conforms to.
type MyconfigRequestAccessAPI =
     "myconfig" :>
       "requestAccess" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "cpksver" Text :>
               QueryParam "userIp" Text :>
                 QueryParam "locale" Text :>
                   QueryParam "licenseTypes"
                     MyconfigRequestAccess'LicenseTypes
                     :>
                     QueryParam "key" Text :>
                       QueryParam "volumeId" Text :>
                         QueryParam "source" Text :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "nonce" Text :>
                                 QueryParam "alt" Alt :>
                                   Post '[JSON] RequestAccess

-- | Request concurrent and download access restrictions.
--
-- /See:/ 'myconfigRequestAccess'' smart constructor.
data MyconfigRequestAccess' = MyconfigRequestAccess'
    { _mraQuotaUser    :: !(Maybe Text)
    , _mraPrettyPrint  :: !Bool
    , _mraCpksver      :: !Text
    , _mraUserIp       :: !(Maybe Text)
    , _mraLocale       :: !(Maybe Text)
    , _mraLicenseTypes :: !(Maybe MyconfigRequestAccess'LicenseTypes)
    , _mraKey          :: !(Maybe Text)
    , _mraVolumeId     :: !Text
    , _mraSource       :: !Text
    , _mraOauthToken   :: !(Maybe Text)
    , _mraFields       :: !(Maybe Text)
    , _mraNonce        :: !Text
    , _mraAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyconfigRequestAccess'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mraQuotaUser'
--
-- * 'mraPrettyPrint'
--
-- * 'mraCpksver'
--
-- * 'mraUserIp'
--
-- * 'mraLocale'
--
-- * 'mraLicenseTypes'
--
-- * 'mraKey'
--
-- * 'mraVolumeId'
--
-- * 'mraSource'
--
-- * 'mraOauthToken'
--
-- * 'mraFields'
--
-- * 'mraNonce'
--
-- * 'mraAlt'
myconfigRequestAccess'
    :: Text -- ^ 'cpksver'
    -> Text -- ^ 'volumeId'
    -> Text -- ^ 'source'
    -> Text -- ^ 'nonce'
    -> MyconfigRequestAccess'
myconfigRequestAccess' pMraCpksver_ pMraVolumeId_ pMraSource_ pMraNonce_ =
    MyconfigRequestAccess'
    { _mraQuotaUser = Nothing
    , _mraPrettyPrint = True
    , _mraCpksver = pMraCpksver_
    , _mraUserIp = Nothing
    , _mraLocale = Nothing
    , _mraLicenseTypes = Nothing
    , _mraKey = Nothing
    , _mraVolumeId = pMraVolumeId_
    , _mraSource = pMraSource_
    , _mraOauthToken = Nothing
    , _mraFields = Nothing
    , _mraNonce = pMraNonce_
    , _mraAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mraQuotaUser :: Lens' MyconfigRequestAccess' (Maybe Text)
mraQuotaUser
  = lens _mraQuotaUser (\ s a -> s{_mraQuotaUser = a})

-- | Returns response with indentations and line breaks.
mraPrettyPrint :: Lens' MyconfigRequestAccess' Bool
mraPrettyPrint
  = lens _mraPrettyPrint
      (\ s a -> s{_mraPrettyPrint = a})

-- | The device\/version ID from which to request the restrictions.
mraCpksver :: Lens' MyconfigRequestAccess' Text
mraCpksver
  = lens _mraCpksver (\ s a -> s{_mraCpksver = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mraUserIp :: Lens' MyconfigRequestAccess' (Maybe Text)
mraUserIp
  = lens _mraUserIp (\ s a -> s{_mraUserIp = a})

-- | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
mraLocale :: Lens' MyconfigRequestAccess' (Maybe Text)
mraLocale
  = lens _mraLocale (\ s a -> s{_mraLocale = a})

-- | The type of access license to request. If not specified, the default is
-- BOTH.
mraLicenseTypes :: Lens' MyconfigRequestAccess' (Maybe MyconfigRequestAccess'LicenseTypes)
mraLicenseTypes
  = lens _mraLicenseTypes
      (\ s a -> s{_mraLicenseTypes = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mraKey :: Lens' MyconfigRequestAccess' (Maybe Text)
mraKey = lens _mraKey (\ s a -> s{_mraKey = a})

-- | The volume to request concurrent\/download restrictions for.
mraVolumeId :: Lens' MyconfigRequestAccess' Text
mraVolumeId
  = lens _mraVolumeId (\ s a -> s{_mraVolumeId = a})

-- | String to identify the originator of this request.
mraSource :: Lens' MyconfigRequestAccess' Text
mraSource
  = lens _mraSource (\ s a -> s{_mraSource = a})

-- | OAuth 2.0 token for the current user.
mraOauthToken :: Lens' MyconfigRequestAccess' (Maybe Text)
mraOauthToken
  = lens _mraOauthToken
      (\ s a -> s{_mraOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
mraFields :: Lens' MyconfigRequestAccess' (Maybe Text)
mraFields
  = lens _mraFields (\ s a -> s{_mraFields = a})

-- | The client nonce value.
mraNonce :: Lens' MyconfigRequestAccess' Text
mraNonce = lens _mraNonce (\ s a -> s{_mraNonce = a})

-- | Data format for the response.
mraAlt :: Lens' MyconfigRequestAccess' Alt
mraAlt = lens _mraAlt (\ s a -> s{_mraAlt = a})

instance GoogleRequest MyconfigRequestAccess' where
        type Rs MyconfigRequestAccess' = RequestAccess
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MyconfigRequestAccess'{..}
          = go _mraQuotaUser (Just _mraPrettyPrint)
              (Just _mraCpksver)
              _mraUserIp
              _mraLocale
              _mraLicenseTypes
              _mraKey
              (Just _mraVolumeId)
              (Just _mraSource)
              _mraOauthToken
              _mraFields
              (Just _mraNonce)
              (Just _mraAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MyconfigRequestAccessAPI)
                      r
                      u
