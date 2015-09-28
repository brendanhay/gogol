{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Storage.Objects.WatchAll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Watch for changes on all objects in a bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage API Reference> for @storage.objects.watchAll@.
module Network.Google.API.Storage.Objects.WatchAll
    (
    -- * REST Resource
      ObjectsWatchAllAPI

    -- * Creating a Request
    , objectsWatchAll'
    , ObjectsWatchAll'

    -- * Request Lenses
    , owaQuotaUser
    , owaPrettyPrint
    , owaPrefix
    , owaUserIp
    , owaBucket
    , owaVersions
    , owaKey
    , owaProjection
    , owaPageToken
    , owaOauthToken
    , owaDelimiter
    , owaMaxResults
    , owaFields
    , owaAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for storage.objects.watchAll which the
-- 'ObjectsWatchAll'' request conforms to.
type ObjectsWatchAllAPI =
     "b" :>
       Capture "bucket" Text :>
         "o" :>
           "watch" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "prefix" Text :>
                   QueryParam "userIp" Text :>
                     QueryParam "versions" Bool :>
                       QueryParam "key" Text :>
                         QueryParam "projection" ObjectsWatchAll'Projection :>
                           QueryParam "pageToken" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "delimiter" Text :>
                                 QueryParam "maxResults" Word32 :>
                                   QueryParam "fields" Text :>
                                     QueryParam "alt" Alt :>
                                       Post '[JSON] Channel

-- | Watch for changes on all objects in a bucket.
--
-- /See:/ 'objectsWatchAll'' smart constructor.
data ObjectsWatchAll' = ObjectsWatchAll'
    { _owaQuotaUser   :: !(Maybe Text)
    , _owaPrettyPrint :: !Bool
    , _owaPrefix      :: !(Maybe Text)
    , _owaUserIp      :: !(Maybe Text)
    , _owaBucket      :: !Text
    , _owaVersions    :: !(Maybe Bool)
    , _owaKey         :: !(Maybe Text)
    , _owaProjection  :: !(Maybe ObjectsWatchAll'Projection)
    , _owaPageToken   :: !(Maybe Text)
    , _owaOauthToken  :: !(Maybe Text)
    , _owaDelimiter   :: !(Maybe Text)
    , _owaMaxResults  :: !(Maybe Word32)
    , _owaFields      :: !(Maybe Text)
    , _owaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsWatchAll'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'owaQuotaUser'
--
-- * 'owaPrettyPrint'
--
-- * 'owaPrefix'
--
-- * 'owaUserIp'
--
-- * 'owaBucket'
--
-- * 'owaVersions'
--
-- * 'owaKey'
--
-- * 'owaProjection'
--
-- * 'owaPageToken'
--
-- * 'owaOauthToken'
--
-- * 'owaDelimiter'
--
-- * 'owaMaxResults'
--
-- * 'owaFields'
--
-- * 'owaAlt'
objectsWatchAll'
    :: Text -- ^ 'bucket'
    -> ObjectsWatchAll'
objectsWatchAll' pOwaBucket_ =
    ObjectsWatchAll'
    { _owaQuotaUser = Nothing
    , _owaPrettyPrint = True
    , _owaPrefix = Nothing
    , _owaUserIp = Nothing
    , _owaBucket = pOwaBucket_
    , _owaVersions = Nothing
    , _owaKey = Nothing
    , _owaProjection = Nothing
    , _owaPageToken = Nothing
    , _owaOauthToken = Nothing
    , _owaDelimiter = Nothing
    , _owaMaxResults = Nothing
    , _owaFields = Nothing
    , _owaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
owaQuotaUser :: Lens' ObjectsWatchAll' (Maybe Text)
owaQuotaUser
  = lens _owaQuotaUser (\ s a -> s{_owaQuotaUser = a})

-- | Returns response with indentations and line breaks.
owaPrettyPrint :: Lens' ObjectsWatchAll' Bool
owaPrettyPrint
  = lens _owaPrettyPrint
      (\ s a -> s{_owaPrettyPrint = a})

-- | Filter results to objects whose names begin with this prefix.
owaPrefix :: Lens' ObjectsWatchAll' (Maybe Text)
owaPrefix
  = lens _owaPrefix (\ s a -> s{_owaPrefix = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
owaUserIp :: Lens' ObjectsWatchAll' (Maybe Text)
owaUserIp
  = lens _owaUserIp (\ s a -> s{_owaUserIp = a})

-- | Name of the bucket in which to look for objects.
owaBucket :: Lens' ObjectsWatchAll' Text
owaBucket
  = lens _owaBucket (\ s a -> s{_owaBucket = a})

-- | If true, lists all versions of a file as distinct results.
owaVersions :: Lens' ObjectsWatchAll' (Maybe Bool)
owaVersions
  = lens _owaVersions (\ s a -> s{_owaVersions = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
owaKey :: Lens' ObjectsWatchAll' (Maybe Text)
owaKey = lens _owaKey (\ s a -> s{_owaKey = a})

-- | Set of properties to return. Defaults to noAcl.
owaProjection :: Lens' ObjectsWatchAll' (Maybe ObjectsWatchAll'Projection)
owaProjection
  = lens _owaProjection
      (\ s a -> s{_owaProjection = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
owaPageToken :: Lens' ObjectsWatchAll' (Maybe Text)
owaPageToken
  = lens _owaPageToken (\ s a -> s{_owaPageToken = a})

-- | OAuth 2.0 token for the current user.
owaOauthToken :: Lens' ObjectsWatchAll' (Maybe Text)
owaOauthToken
  = lens _owaOauthToken
      (\ s a -> s{_owaOauthToken = a})

-- | Returns results in a directory-like mode. items will contain only
-- objects whose names, aside from the prefix, do not contain delimiter.
-- Objects whose names, aside from the prefix, contain delimiter will have
-- their name, truncated after the delimiter, returned in prefixes.
-- Duplicate prefixes are omitted.
owaDelimiter :: Lens' ObjectsWatchAll' (Maybe Text)
owaDelimiter
  = lens _owaDelimiter (\ s a -> s{_owaDelimiter = a})

-- | Maximum number of items plus prefixes to return. As duplicate prefixes
-- are omitted, fewer total results may be returned than requested.
owaMaxResults :: Lens' ObjectsWatchAll' (Maybe Word32)
owaMaxResults
  = lens _owaMaxResults
      (\ s a -> s{_owaMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
owaFields :: Lens' ObjectsWatchAll' (Maybe Text)
owaFields
  = lens _owaFields (\ s a -> s{_owaFields = a})

-- | Data format for the response.
owaAlt :: Lens' ObjectsWatchAll' Alt
owaAlt = lens _owaAlt (\ s a -> s{_owaAlt = a})

instance GoogleRequest ObjectsWatchAll' where
        type Rs ObjectsWatchAll' = Channel
        request = requestWithRoute defReq storageURL
        requestWithRoute r u ObjectsWatchAll'{..}
          = go _owaQuotaUser (Just _owaPrettyPrint) _owaPrefix
              _owaUserIp
              _owaBucket
              _owaVersions
              _owaKey
              _owaProjection
              _owaPageToken
              _owaOauthToken
              _owaDelimiter
              _owaMaxResults
              _owaFields
              (Just _owaAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ObjectsWatchAllAPI)
                      r
                      u
