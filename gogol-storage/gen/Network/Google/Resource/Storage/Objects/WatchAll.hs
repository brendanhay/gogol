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
-- Module      : Network.Google.Resource.Storage.Objects.WatchAll
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Watch for changes on all objects in a bucket.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.watchAll@.
module Network.Google.Resource.Storage.Objects.WatchAll
    (
    -- * REST Resource
      ObjectsWatchAllResource

    -- * Creating a Request
    , objectsWatchAll
    , ObjectsWatchAll

    -- * Request Lenses
    , owaPrefix
    , owaBucket
    , owaPayload
    , owaVersions
    , owaProjection
    , owaPageToken
    , owaDelimiter
    , owaMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.objects.watchAll@ method which the
-- 'ObjectsWatchAll' request conforms to.
type ObjectsWatchAllResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "o" :>
               "watch" :>
                 QueryParam "prefix" Text :>
                   QueryParam "versions" Bool :>
                     QueryParam "projection" ObjectsWatchAllProjection :>
                       QueryParam "pageToken" Text :>
                         QueryParam "delimiter" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] Channel :> Post '[JSON] Channel

-- | Watch for changes on all objects in a bucket.
--
-- /See:/ 'objectsWatchAll' smart constructor.
data ObjectsWatchAll = ObjectsWatchAll
    { _owaPrefix     :: !(Maybe Text)
    , _owaBucket     :: !Text
    , _owaPayload    :: !Channel
    , _owaVersions   :: !(Maybe Bool)
    , _owaProjection :: !(Maybe ObjectsWatchAllProjection)
    , _owaPageToken  :: !(Maybe Text)
    , _owaDelimiter  :: !(Maybe Text)
    , _owaMaxResults :: !(Maybe Word32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsWatchAll' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'owaPrefix'
--
-- * 'owaBucket'
--
-- * 'owaPayload'
--
-- * 'owaVersions'
--
-- * 'owaProjection'
--
-- * 'owaPageToken'
--
-- * 'owaDelimiter'
--
-- * 'owaMaxResults'
objectsWatchAll
    :: Text -- ^ 'owaBucket'
    -> Channel -- ^ 'owaPayload'
    -> ObjectsWatchAll
objectsWatchAll pOwaBucket_ pOwaPayload_ =
    ObjectsWatchAll
    { _owaPrefix = Nothing
    , _owaBucket = pOwaBucket_
    , _owaPayload = pOwaPayload_
    , _owaVersions = Nothing
    , _owaProjection = Nothing
    , _owaPageToken = Nothing
    , _owaDelimiter = Nothing
    , _owaMaxResults = Nothing
    }

-- | Filter results to objects whose names begin with this prefix.
owaPrefix :: Lens' ObjectsWatchAll (Maybe Text)
owaPrefix
  = lens _owaPrefix (\ s a -> s{_owaPrefix = a})

-- | Name of the bucket in which to look for objects.
owaBucket :: Lens' ObjectsWatchAll Text
owaBucket
  = lens _owaBucket (\ s a -> s{_owaBucket = a})

-- | Multipart request metadata.
owaPayload :: Lens' ObjectsWatchAll Channel
owaPayload
  = lens _owaPayload (\ s a -> s{_owaPayload = a})

-- | If true, lists all versions of an object as distinct results. The
-- default is false. For more information, see Object Versioning.
owaVersions :: Lens' ObjectsWatchAll (Maybe Bool)
owaVersions
  = lens _owaVersions (\ s a -> s{_owaVersions = a})

-- | Set of properties to return. Defaults to noAcl.
owaProjection :: Lens' ObjectsWatchAll (Maybe ObjectsWatchAllProjection)
owaProjection
  = lens _owaProjection
      (\ s a -> s{_owaProjection = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
owaPageToken :: Lens' ObjectsWatchAll (Maybe Text)
owaPageToken
  = lens _owaPageToken (\ s a -> s{_owaPageToken = a})

-- | Returns results in a directory-like mode. items will contain only
-- objects whose names, aside from the prefix, do not contain delimiter.
-- Objects whose names, aside from the prefix, contain delimiter will have
-- their name, truncated after the delimiter, returned in prefixes.
-- Duplicate prefixes are omitted.
owaDelimiter :: Lens' ObjectsWatchAll (Maybe Text)
owaDelimiter
  = lens _owaDelimiter (\ s a -> s{_owaDelimiter = a})

-- | Maximum number of items plus prefixes to return. As duplicate prefixes
-- are omitted, fewer total results may be returned than requested. The
-- default value of this parameter is 1,000 items.
owaMaxResults :: Lens' ObjectsWatchAll (Maybe Word32)
owaMaxResults
  = lens _owaMaxResults
      (\ s a -> s{_owaMaxResults = a})

instance GoogleRequest ObjectsWatchAll where
        type Rs ObjectsWatchAll = Channel
        requestClient ObjectsWatchAll{..}
          = go _owaBucket _owaPrefix _owaVersions
              _owaProjection
              _owaPageToken
              _owaDelimiter
              _owaMaxResults
              (Just AltJSON)
              _owaPayload
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ObjectsWatchAllResource)
                      mempty
