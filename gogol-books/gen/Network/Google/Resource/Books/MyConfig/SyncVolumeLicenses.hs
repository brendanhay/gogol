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
-- Module      : Network.Google.Resource.Books.MyConfig.SyncVolumeLicenses
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Request downloaded content access for specified volumes on the My eBooks
-- shelf.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyConfigSyncVolumeLicenses@.
module Network.Google.Resource.Books.MyConfig.SyncVolumeLicenses
    (
    -- * REST Resource
      MyConfigSyncVolumeLicensesResource

    -- * Creating a Request
    , myConfigSyncVolumeLicenses'
    , MyConfigSyncVolumeLicenses'

    -- * Request Lenses
    , mcsvlQuotaUser
    , mcsvlPrettyPrint
    , mcsvlCpksver
    , mcsvlUserIP
    , mcsvlLocale
    , mcsvlVolumeIds
    , mcsvlKey
    , mcsvlFeatures
    , mcsvlSource
    , mcsvlOAuthToken
    , mcsvlShowPreOrders
    , mcsvlFields
    , mcsvlNonce
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyConfigSyncVolumeLicenses@ which the
-- 'MyConfigSyncVolumeLicenses'' request conforms to.
type MyConfigSyncVolumeLicensesResource =
     "myconfig" :>
       "syncVolumeLicenses" :>
         QueryParam "source" Text :>
           QueryParam "nonce" Text :>
             QueryParam "cpksver" Text :>
               QueryParam "locale" Text :>
                 QueryParams "volumeIds" Text :>
                   QueryParams "features"
                     MyConfigSyncVolumeLicensesFeatures
                     :>
                     QueryParam "showPreorders" Bool :>
                       QueryParam "quotaUser" Text :>
                         QueryParam "prettyPrint" Bool :>
                           QueryParam "userIp" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "key" Key :>
                                 QueryParam "oauth_token" OAuthToken :>
                                   QueryParam "alt" AltJSON :>
                                     Post '[JSON] Volumes

-- | Request downloaded content access for specified volumes on the My eBooks
-- shelf.
--
-- /See:/ 'myConfigSyncVolumeLicenses'' smart constructor.
data MyConfigSyncVolumeLicenses' = MyConfigSyncVolumeLicenses'
    { _mcsvlQuotaUser     :: !(Maybe Text)
    , _mcsvlPrettyPrint   :: !Bool
    , _mcsvlCpksver       :: !Text
    , _mcsvlUserIP        :: !(Maybe Text)
    , _mcsvlLocale        :: !(Maybe Text)
    , _mcsvlVolumeIds     :: !(Maybe [Text])
    , _mcsvlKey           :: !(Maybe Key)
    , _mcsvlFeatures      :: !(Maybe [MyConfigSyncVolumeLicensesFeatures])
    , _mcsvlSource        :: !Text
    , _mcsvlOAuthToken    :: !(Maybe OAuthToken)
    , _mcsvlShowPreOrders :: !(Maybe Bool)
    , _mcsvlFields        :: !(Maybe Text)
    , _mcsvlNonce         :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyConfigSyncVolumeLicenses'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcsvlQuotaUser'
--
-- * 'mcsvlPrettyPrint'
--
-- * 'mcsvlCpksver'
--
-- * 'mcsvlUserIP'
--
-- * 'mcsvlLocale'
--
-- * 'mcsvlVolumeIds'
--
-- * 'mcsvlKey'
--
-- * 'mcsvlFeatures'
--
-- * 'mcsvlSource'
--
-- * 'mcsvlOAuthToken'
--
-- * 'mcsvlShowPreOrders'
--
-- * 'mcsvlFields'
--
-- * 'mcsvlNonce'
myConfigSyncVolumeLicenses'
    :: Text -- ^ 'cpksver'
    -> Text -- ^ 'source'
    -> Text -- ^ 'nonce'
    -> MyConfigSyncVolumeLicenses'
myConfigSyncVolumeLicenses' pMcsvlCpksver_ pMcsvlSource_ pMcsvlNonce_ =
    MyConfigSyncVolumeLicenses'
    { _mcsvlQuotaUser = Nothing
    , _mcsvlPrettyPrint = True
    , _mcsvlCpksver = pMcsvlCpksver_
    , _mcsvlUserIP = Nothing
    , _mcsvlLocale = Nothing
    , _mcsvlVolumeIds = Nothing
    , _mcsvlKey = Nothing
    , _mcsvlFeatures = Nothing
    , _mcsvlSource = pMcsvlSource_
    , _mcsvlOAuthToken = Nothing
    , _mcsvlShowPreOrders = Nothing
    , _mcsvlFields = Nothing
    , _mcsvlNonce = pMcsvlNonce_
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcsvlQuotaUser :: Lens' MyConfigSyncVolumeLicenses' (Maybe Text)
mcsvlQuotaUser
  = lens _mcsvlQuotaUser
      (\ s a -> s{_mcsvlQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcsvlPrettyPrint :: Lens' MyConfigSyncVolumeLicenses' Bool
mcsvlPrettyPrint
  = lens _mcsvlPrettyPrint
      (\ s a -> s{_mcsvlPrettyPrint = a})

-- | The device\/version ID from which to release the restriction.
mcsvlCpksver :: Lens' MyConfigSyncVolumeLicenses' Text
mcsvlCpksver
  = lens _mcsvlCpksver (\ s a -> s{_mcsvlCpksver = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcsvlUserIP :: Lens' MyConfigSyncVolumeLicenses' (Maybe Text)
mcsvlUserIP
  = lens _mcsvlUserIP (\ s a -> s{_mcsvlUserIP = a})

-- | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
mcsvlLocale :: Lens' MyConfigSyncVolumeLicenses' (Maybe Text)
mcsvlLocale
  = lens _mcsvlLocale (\ s a -> s{_mcsvlLocale = a})

-- | The volume(s) to request download restrictions for.
mcsvlVolumeIds :: Lens' MyConfigSyncVolumeLicenses' [Text]
mcsvlVolumeIds
  = lens _mcsvlVolumeIds
      (\ s a -> s{_mcsvlVolumeIds = a})
      . _Default
      . _Coerce

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcsvlKey :: Lens' MyConfigSyncVolumeLicenses' (Maybe Key)
mcsvlKey = lens _mcsvlKey (\ s a -> s{_mcsvlKey = a})

-- | List of features supported by the client, i.e., \'RENTALS\'
mcsvlFeatures :: Lens' MyConfigSyncVolumeLicenses' [MyConfigSyncVolumeLicensesFeatures]
mcsvlFeatures
  = lens _mcsvlFeatures
      (\ s a -> s{_mcsvlFeatures = a})
      . _Default
      . _Coerce

-- | String to identify the originator of this request.
mcsvlSource :: Lens' MyConfigSyncVolumeLicenses' Text
mcsvlSource
  = lens _mcsvlSource (\ s a -> s{_mcsvlSource = a})

-- | OAuth 2.0 token for the current user.
mcsvlOAuthToken :: Lens' MyConfigSyncVolumeLicenses' (Maybe OAuthToken)
mcsvlOAuthToken
  = lens _mcsvlOAuthToken
      (\ s a -> s{_mcsvlOAuthToken = a})

-- | Set to true to show pre-ordered books. Defaults to false.
mcsvlShowPreOrders :: Lens' MyConfigSyncVolumeLicenses' (Maybe Bool)
mcsvlShowPreOrders
  = lens _mcsvlShowPreOrders
      (\ s a -> s{_mcsvlShowPreOrders = a})

-- | Selector specifying which fields to include in a partial response.
mcsvlFields :: Lens' MyConfigSyncVolumeLicenses' (Maybe Text)
mcsvlFields
  = lens _mcsvlFields (\ s a -> s{_mcsvlFields = a})

-- | The client nonce value.
mcsvlNonce :: Lens' MyConfigSyncVolumeLicenses' Text
mcsvlNonce
  = lens _mcsvlNonce (\ s a -> s{_mcsvlNonce = a})

instance GoogleAuth MyConfigSyncVolumeLicenses' where
        authKey = mcsvlKey . _Just
        authToken = mcsvlOAuthToken . _Just

instance GoogleRequest MyConfigSyncVolumeLicenses'
         where
        type Rs MyConfigSyncVolumeLicenses' = Volumes
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MyConfigSyncVolumeLicenses'{..}
          = go (Just _mcsvlSource) (Just _mcsvlNonce)
              (Just _mcsvlCpksver)
              _mcsvlLocale
              (_mcsvlVolumeIds ^. _Default)
              (_mcsvlFeatures ^. _Default)
              _mcsvlShowPreOrders
              _mcsvlQuotaUser
              (Just _mcsvlPrettyPrint)
              _mcsvlUserIP
              _mcsvlFields
              _mcsvlKey
              _mcsvlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MyConfigSyncVolumeLicensesResource)
                      r
                      u
