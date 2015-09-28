{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Apps.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a user\'s installed apps.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.apps.list@.
module Network.Google.API.Drive.Apps.List
    (
    -- * REST Resource
      AppsListAPI

    -- * Creating a Request
    , appsList'
    , AppsList'

    -- * Request Lenses
    , alQuotaUser
    , alLanguageCode
    , alPrettyPrint
    , alUserIp
    , alKey
    , alOauthToken
    , alAppFilterExtensions
    , alAppFilterMimeTypes
    , alFields
    , alAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.apps.list which the
-- 'AppsList'' request conforms to.
type AppsListAPI =
     "apps" :>
       QueryParam "quotaUser" Text :>
         QueryParam "languageCode" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "appFilterExtensions" Text :>
                     QueryParam "appFilterMimeTypes" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] AppList

-- | Lists a user\'s installed apps.
--
-- /See:/ 'appsList'' smart constructor.
data AppsList' = AppsList'
    { _alQuotaUser           :: !(Maybe Text)
    , _alLanguageCode        :: !(Maybe Text)
    , _alPrettyPrint         :: !Bool
    , _alUserIp              :: !(Maybe Text)
    , _alKey                 :: !(Maybe Text)
    , _alOauthToken          :: !(Maybe Text)
    , _alAppFilterExtensions :: !Text
    , _alAppFilterMimeTypes  :: !Text
    , _alFields              :: !(Maybe Text)
    , _alAlt                 :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alQuotaUser'
--
-- * 'alLanguageCode'
--
-- * 'alPrettyPrint'
--
-- * 'alUserIp'
--
-- * 'alKey'
--
-- * 'alOauthToken'
--
-- * 'alAppFilterExtensions'
--
-- * 'alAppFilterMimeTypes'
--
-- * 'alFields'
--
-- * 'alAlt'
appsList'
    :: AppsList'
appsList' =
    AppsList'
    { _alQuotaUser = Nothing
    , _alLanguageCode = Nothing
    , _alPrettyPrint = True
    , _alUserIp = Nothing
    , _alKey = Nothing
    , _alOauthToken = Nothing
    , _alAppFilterExtensions = ""
    , _alAppFilterMimeTypes = ""
    , _alFields = Nothing
    , _alAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' AppsList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | A language or locale code, as defined by BCP 47, with some extensions
-- from Unicode\'s LDML format (http:\/\/www.unicode.org\/reports\/tr35\/).
alLanguageCode :: Lens' AppsList' (Maybe Text)
alLanguageCode
  = lens _alLanguageCode
      (\ s a -> s{_alLanguageCode = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' AppsList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIp :: Lens' AppsList' (Maybe Text)
alUserIp = lens _alUserIp (\ s a -> s{_alUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' AppsList' (Maybe Text)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | OAuth 2.0 token for the current user.
alOauthToken :: Lens' AppsList' (Maybe Text)
alOauthToken
  = lens _alOauthToken (\ s a -> s{_alOauthToken = a})

-- | A comma-separated list of file extensions for open with filtering. All
-- apps within the given app query scope which can open any of the given
-- file extensions will be included in the response. If appFilterMimeTypes
-- are provided as well, the result is a union of the two resulting app
-- lists.
alAppFilterExtensions :: Lens' AppsList' Text
alAppFilterExtensions
  = lens _alAppFilterExtensions
      (\ s a -> s{_alAppFilterExtensions = a})

-- | A comma-separated list of MIME types for open with filtering. All apps
-- within the given app query scope which can open any of the given MIME
-- types will be included in the response. If appFilterExtensions are
-- provided as well, the result is a union of the two resulting app lists.
alAppFilterMimeTypes :: Lens' AppsList' Text
alAppFilterMimeTypes
  = lens _alAppFilterMimeTypes
      (\ s a -> s{_alAppFilterMimeTypes = a})

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' AppsList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

-- | Data format for the response.
alAlt :: Lens' AppsList' Alt
alAlt = lens _alAlt (\ s a -> s{_alAlt = a})

instance GoogleRequest AppsList' where
        type Rs AppsList' = AppList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u AppsList'{..}
          = go _alQuotaUser _alLanguageCode
              (Just _alPrettyPrint)
              _alUserIp
              _alKey
              _alOauthToken
              (Just _alAppFilterExtensions)
              (Just _alAppFilterMimeTypes)
              _alFields
              (Just _alAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AppsListAPI) r u
