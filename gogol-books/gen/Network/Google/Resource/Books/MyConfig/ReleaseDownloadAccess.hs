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
-- Module      : Network.Google.Resource.Books.MyConfig.ReleaseDownloadAccess
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Release downloaded content access restriction.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyConfigReleaseDownloadAccess@.
module Network.Google.Resource.Books.MyConfig.ReleaseDownloadAccess
    (
    -- * REST Resource
      MyConfigReleaseDownloadAccessResource

    -- * Creating a Request
    , myConfigReleaseDownloadAccess'
    , MyConfigReleaseDownloadAccess'

    -- * Request Lenses
    , mcrdaQuotaUser
    , mcrdaPrettyPrint
    , mcrdaCpksver
    , mcrdaUserIP
    , mcrdaLocale
    , mcrdaVolumeIds
    , mcrdaKey
    , mcrdaSource
    , mcrdaOAuthToken
    , mcrdaFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyConfigReleaseDownloadAccess@ which the
-- 'MyConfigReleaseDownloadAccess'' request conforms to.
type MyConfigReleaseDownloadAccessResource =
     "myconfig" :>
       "releaseDownloadAccess" :>
         QueryParams "volumeIds" Text :>
           QueryParam "cpksver" Text :>
             QueryParam "locale" Text :>
               QueryParam "source" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Post '[JSON] DownloadAccesses

-- | Release downloaded content access restriction.
--
-- /See:/ 'myConfigReleaseDownloadAccess'' smart constructor.
data MyConfigReleaseDownloadAccess' = MyConfigReleaseDownloadAccess'
    { _mcrdaQuotaUser   :: !(Maybe Text)
    , _mcrdaPrettyPrint :: !Bool
    , _mcrdaCpksver     :: !Text
    , _mcrdaUserIP      :: !(Maybe Text)
    , _mcrdaLocale      :: !(Maybe Text)
    , _mcrdaVolumeIds   :: ![Text]
    , _mcrdaKey         :: !(Maybe Key)
    , _mcrdaSource      :: !(Maybe Text)
    , _mcrdaOAuthToken  :: !(Maybe OAuthToken)
    , _mcrdaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyConfigReleaseDownloadAccess'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcrdaQuotaUser'
--
-- * 'mcrdaPrettyPrint'
--
-- * 'mcrdaCpksver'
--
-- * 'mcrdaUserIP'
--
-- * 'mcrdaLocale'
--
-- * 'mcrdaVolumeIds'
--
-- * 'mcrdaKey'
--
-- * 'mcrdaSource'
--
-- * 'mcrdaOAuthToken'
--
-- * 'mcrdaFields'
myConfigReleaseDownloadAccess'
    :: Text -- ^ 'cpksver'
    -> [Text] -- ^ 'volumeIds'
    -> MyConfigReleaseDownloadAccess'
myConfigReleaseDownloadAccess' pMcrdaCpksver_ pMcrdaVolumeIds_ =
    MyConfigReleaseDownloadAccess'
    { _mcrdaQuotaUser = Nothing
    , _mcrdaPrettyPrint = True
    , _mcrdaCpksver = pMcrdaCpksver_
    , _mcrdaUserIP = Nothing
    , _mcrdaLocale = Nothing
    , _mcrdaVolumeIds = pMcrdaVolumeIds_
    , _mcrdaKey = Nothing
    , _mcrdaSource = Nothing
    , _mcrdaOAuthToken = Nothing
    , _mcrdaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mcrdaQuotaUser :: Lens' MyConfigReleaseDownloadAccess' (Maybe Text)
mcrdaQuotaUser
  = lens _mcrdaQuotaUser
      (\ s a -> s{_mcrdaQuotaUser = a})

-- | Returns response with indentations and line breaks.
mcrdaPrettyPrint :: Lens' MyConfigReleaseDownloadAccess' Bool
mcrdaPrettyPrint
  = lens _mcrdaPrettyPrint
      (\ s a -> s{_mcrdaPrettyPrint = a})

-- | The device\/version ID from which to release the restriction.
mcrdaCpksver :: Lens' MyConfigReleaseDownloadAccess' Text
mcrdaCpksver
  = lens _mcrdaCpksver (\ s a -> s{_mcrdaCpksver = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mcrdaUserIP :: Lens' MyConfigReleaseDownloadAccess' (Maybe Text)
mcrdaUserIP
  = lens _mcrdaUserIP (\ s a -> s{_mcrdaUserIP = a})

-- | ISO-639-1, ISO-3166-1 codes for message localization, i.e. en_US.
mcrdaLocale :: Lens' MyConfigReleaseDownloadAccess' (Maybe Text)
mcrdaLocale
  = lens _mcrdaLocale (\ s a -> s{_mcrdaLocale = a})

-- | The volume(s) to release restrictions for.
mcrdaVolumeIds :: Lens' MyConfigReleaseDownloadAccess' [Text]
mcrdaVolumeIds
  = lens _mcrdaVolumeIds
      (\ s a -> s{_mcrdaVolumeIds = a})
      . _Coerce

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mcrdaKey :: Lens' MyConfigReleaseDownloadAccess' (Maybe Key)
mcrdaKey = lens _mcrdaKey (\ s a -> s{_mcrdaKey = a})

-- | String to identify the originator of this request.
mcrdaSource :: Lens' MyConfigReleaseDownloadAccess' (Maybe Text)
mcrdaSource
  = lens _mcrdaSource (\ s a -> s{_mcrdaSource = a})

-- | OAuth 2.0 token for the current user.
mcrdaOAuthToken :: Lens' MyConfigReleaseDownloadAccess' (Maybe OAuthToken)
mcrdaOAuthToken
  = lens _mcrdaOAuthToken
      (\ s a -> s{_mcrdaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mcrdaFields :: Lens' MyConfigReleaseDownloadAccess' (Maybe Text)
mcrdaFields
  = lens _mcrdaFields (\ s a -> s{_mcrdaFields = a})

instance GoogleAuth MyConfigReleaseDownloadAccess'
         where
        authKey = mcrdaKey . _Just
        authToken = mcrdaOAuthToken . _Just

instance GoogleRequest MyConfigReleaseDownloadAccess'
         where
        type Rs MyConfigReleaseDownloadAccess' =
             DownloadAccesses
        request = requestWithRoute defReq booksURL
        requestWithRoute r u
          MyConfigReleaseDownloadAccess'{..}
          = go _mcrdaVolumeIds (Just _mcrdaCpksver)
              _mcrdaLocale
              _mcrdaSource
              _mcrdaQuotaUser
              (Just _mcrdaPrettyPrint)
              _mcrdaUserIP
              _mcrdaFields
              _mcrdaKey
              _mcrdaOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy MyConfigReleaseDownloadAccessResource)
                      r
                      u
