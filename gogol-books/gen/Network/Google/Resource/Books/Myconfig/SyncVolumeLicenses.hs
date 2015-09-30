{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Myconfig.SyncVolumeLicenses
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Request downloaded content access for specified volumes on the My eBooks
-- shelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyconfigSyncVolumeLicenses@.
module Books.Myconfig.SyncVolumeLicenses
    (
    -- * REST Resource
      MyconfigSyncVolumeLicensesAPI

    -- * Creating a Request
    , myconfigSyncVolumeLicenses
    , MyconfigSyncVolumeLicenses

    -- * Request Lenses
    , msvlQuotaUser
    , msvlPrettyPrint
    , msvlCpksver
    , msvlUserIp
    , msvlLocale
    , msvlVolumeIds
    , msvlKey
    , msvlFeatures
    , msvlSource
    , msvlOauthToken
    , msvlShowPreorders
    , msvlFields
    , msvlNonce
    , msvlAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyconfigSyncVolumeLicenses@ which the
-- 'MyconfigSyncVolumeLicenses' request conforms to.
type MyconfigSyncVolumeLicensesAPI =
     "myconfig" :>
       "syncVolumeLicenses" :>
         QueryParam "cpksver" Text :>
           QueryParam "locale" Text :>
             QueryParams "volumeIds" Text :>
               QueryParams "features" Text :>
                 QueryParam "source" Text :>
                   QueryParam "showPreorders" Bool :>
                     QueryParam "nonce" Text :> Post '[JSON] Volumes

-- | Request downloaded content access for specified volumes on the My eBooks
-- shelf.
--
-- /See:/ 'myconfigSyncVolumeLicenses' smart constructor.
data MyconfigSyncVolumeLicenses = MyconfigSyncVolumeLicenses
    { _msvlQuotaUser     :: !(Maybe Text)
    , _msvlPrettyPrint   :: !Bool
    , _msvlCpksver       :: !Text
    , _msvlUserIp        :: !(Maybe Text)
    , _msvlLocale        :: !(Maybe Text)
    , _msvlVolumeIds     :: !(Maybe Text)
    , _msvlKey           :: !(Maybe Text)
    , _msvlFeatures      :: !(Maybe Text)
    , _msvlSource        :: !Text
    , _msvlOauthToken    :: !(Maybe Text)
    , _msvlShowPreorders :: !(Maybe Bool)
    , _msvlFields        :: !(Maybe Text)
    , _msvlNonce         :: !Text
    , _msvlAlt           :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyconfigSyncVolumeLicenses'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'msvlQuotaUser'
--
-- * 'msvlPrettyPrint'
--
-- * 'msvlCpksver'
--
-- * 'msvlUserIp'
--
-- * 'msvlLocale'
--
-- * 'msvlVolumeIds'
--
-- * 'msvlKey'
--
-- * 'msvlFeatures'
--
-- * 'msvlSource'
--
-- * 'msvlOauthToken'
--
-- * 'msvlShowPreorders'
--
-- * 'msvlFields'
--
-- * 'msvlNonce'
--
-- * 'msvlAlt'
myconfigSyncVolumeLicenses
    :: Text -- ^ 'cpksver'
    -> Text -- ^ 'source'
    -> Text -- ^ 'nonce'
    -> MyconfigSyncVolumeLicenses
myconfigSyncVolumeLicenses pMsvlCpksver_ pMsvlSource_ pMsvlNonce_ =
    MyconfigSyncVolumeLicenses
    { _msvlQuotaUser = Nothing
    , _msvlPrettyPrint = True
    , _msvlCpksver = pMsvlCpksver_
    , _msvlUserIp = Nothing
    , _msvlLocale = Nothing
    , _msvlVolumeIds = Nothing
    , _msvlKey = Nothing
    , _msvlFeatures = Nothing
    , _msvlSource = pMsvlSource_
    , _msvlOauthToken = Nothing
    , _msvlShowPreorders = Nothing
    , _msvlFields = Nothing
    , _msvlNonce = pMsvlNonce_
    , _msvlAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
msvlQuotaUser :: Lens' MyconfigSyncVolumeLicenses' (Maybe Text)
msvlQuotaUser
  = lens _msvlQuotaUser
      (\ s a -> s{_msvlQuotaUser = a})

-- | Returns response with indentations and line breaks.
msvlPrettyPrint :: Lens' MyconfigSyncVolumeLicenses' Bool
msvlPrettyPrint
  = lens _msvlPrettyPrint
      (\ s a -> s{_msvlPrettyPrint = a})

-- | The device\/version ID from which to release the restriction.
msvlCpksver :: Lens' MyconfigSyncVolumeLicenses' Text
msvlCpksver
  = lens _msvlCpksver (\ s a -> s{_msvlCpksver = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
msvlUserIp :: Lens' MyconfigSyncVolumeLicenses' (Maybe Text)
msvlUserIp
  = lens _msvlUserIp (\ s a -> s{_msvlUserIp = a})

-- | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
msvlLocale :: Lens' MyconfigSyncVolumeLicenses' (Maybe Text)
msvlLocale
  = lens _msvlLocale (\ s a -> s{_msvlLocale = a})

-- | The volume(s) to request download restrictions for.
msvlVolumeIds :: Lens' MyconfigSyncVolumeLicenses' (Maybe Text)
msvlVolumeIds
  = lens _msvlVolumeIds
      (\ s a -> s{_msvlVolumeIds = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
msvlKey :: Lens' MyconfigSyncVolumeLicenses' (Maybe Text)
msvlKey = lens _msvlKey (\ s a -> s{_msvlKey = a})

-- | List of features supported by the client, i.e., \'RENTALS\'
msvlFeatures :: Lens' MyconfigSyncVolumeLicenses' (Maybe Text)
msvlFeatures
  = lens _msvlFeatures (\ s a -> s{_msvlFeatures = a})

-- | String to identify the originator of this request.
msvlSource :: Lens' MyconfigSyncVolumeLicenses' Text
msvlSource
  = lens _msvlSource (\ s a -> s{_msvlSource = a})

-- | OAuth 2.0 token for the current user.
msvlOauthToken :: Lens' MyconfigSyncVolumeLicenses' (Maybe Text)
msvlOauthToken
  = lens _msvlOauthToken
      (\ s a -> s{_msvlOauthToken = a})

-- | Set to true to show pre-ordered books. Defaults to false.
msvlShowPreorders :: Lens' MyconfigSyncVolumeLicenses' (Maybe Bool)
msvlShowPreorders
  = lens _msvlShowPreorders
      (\ s a -> s{_msvlShowPreorders = a})

-- | Selector specifying which fields to include in a partial response.
msvlFields :: Lens' MyconfigSyncVolumeLicenses' (Maybe Text)
msvlFields
  = lens _msvlFields (\ s a -> s{_msvlFields = a})

-- | The client nonce value.
msvlNonce :: Lens' MyconfigSyncVolumeLicenses' Text
msvlNonce
  = lens _msvlNonce (\ s a -> s{_msvlNonce = a})

-- | Data format for the response.
msvlAlt :: Lens' MyconfigSyncVolumeLicenses' Text
msvlAlt = lens _msvlAlt (\ s a -> s{_msvlAlt = a})

instance GoogleRequest MyconfigSyncVolumeLicenses'
         where
        type Rs MyconfigSyncVolumeLicenses' = Volumes
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MyconfigSyncVolumeLicenses{..}
          = go _msvlQuotaUser _msvlPrettyPrint
              (Just _msvlCpksver)
              _msvlUserIp
              _msvlLocale
              _msvlVolumeIds
              _msvlKey
              _msvlFeatures
              (Just _msvlSource)
              _msvlOauthToken
              _msvlShowPreorders
              _msvlFields
              (Just _msvlNonce)
              _msvlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MyconfigSyncVolumeLicensesAPI)
                      r
                      u
