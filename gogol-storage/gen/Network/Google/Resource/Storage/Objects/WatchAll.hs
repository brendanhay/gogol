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
-- Copyright   : (c) 2015-2016 Brendan Hay
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
    , owaStartOffSet
    , owaPrefix
    , owaBucket
    , owaPayload
    , owaVersions
    , owaUserProject
    , owaEndOffSet
    , owaIncludeTrailingDelimiter
    , owaProjection
    , owaProvisionalUserProject
    , owaPageToken
    , owaDelimiter
    , owaMaxResults
    ) where

import Network.Google.Prelude
import Network.Google.Storage.Types

-- | A resource alias for @storage.objects.watchAll@ method which the
-- 'ObjectsWatchAll' request conforms to.
type ObjectsWatchAllResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "o" :>
               "watch" :>
                 QueryParam "startOffset" Text :>
                   QueryParam "prefix" Text :>
                     QueryParam "versions" Bool :>
                       QueryParam "userProject" Text :>
                         QueryParam "endOffset" Text :>
                           QueryParam "includeTrailingDelimiter" Bool :>
                             QueryParam "projection" ObjectsWatchAllProjection
                               :>
                               QueryParam "provisionalUserProject" Text :>
                                 QueryParam "pageToken" Text :>
                                   QueryParam "delimiter" Text :>
                                     QueryParam "maxResults" (Textual Word32) :>
                                       QueryParam "alt" AltJSON :>
                                         ReqBody '[JSON] Channel :>
                                           Post '[JSON] Channel

-- | Watch for changes on all objects in a bucket.
--
-- /See:/ 'objectsWatchAll' smart constructor.
data ObjectsWatchAll =
  ObjectsWatchAll'
    { _owaStartOffSet :: !(Maybe Text)
    , _owaPrefix :: !(Maybe Text)
    , _owaBucket :: !Text
    , _owaPayload :: !Channel
    , _owaVersions :: !(Maybe Bool)
    , _owaUserProject :: !(Maybe Text)
    , _owaEndOffSet :: !(Maybe Text)
    , _owaIncludeTrailingDelimiter :: !(Maybe Bool)
    , _owaProjection :: !(Maybe ObjectsWatchAllProjection)
    , _owaProvisionalUserProject :: !(Maybe Text)
    , _owaPageToken :: !(Maybe Text)
    , _owaDelimiter :: !(Maybe Text)
    , _owaMaxResults :: !(Textual Word32)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ObjectsWatchAll' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'owaStartOffSet'
--
-- * 'owaPrefix'
--
-- * 'owaBucket'
--
-- * 'owaPayload'
--
-- * 'owaVersions'
--
-- * 'owaUserProject'
--
-- * 'owaEndOffSet'
--
-- * 'owaIncludeTrailingDelimiter'
--
-- * 'owaProjection'
--
-- * 'owaProvisionalUserProject'
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
  ObjectsWatchAll'
    { _owaStartOffSet = Nothing
    , _owaPrefix = Nothing
    , _owaBucket = pOwaBucket_
    , _owaPayload = pOwaPayload_
    , _owaVersions = Nothing
    , _owaUserProject = Nothing
    , _owaEndOffSet = Nothing
    , _owaIncludeTrailingDelimiter = Nothing
    , _owaProjection = Nothing
    , _owaProvisionalUserProject = Nothing
    , _owaPageToken = Nothing
    , _owaDelimiter = Nothing
    , _owaMaxResults = 1000
    }


-- | Filter results to objects whose names are lexicographically equal to or
-- after startOffset. If endOffset is also set, the objects listed will
-- have names between startOffset (inclusive) and endOffset (exclusive).
owaStartOffSet :: Lens' ObjectsWatchAll (Maybe Text)
owaStartOffSet
  = lens _owaStartOffSet
      (\ s a -> s{_owaStartOffSet = a})

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

-- | The project to be billed for this request. Required for Requester Pays
-- buckets.
owaUserProject :: Lens' ObjectsWatchAll (Maybe Text)
owaUserProject
  = lens _owaUserProject
      (\ s a -> s{_owaUserProject = a})

-- | Filter results to objects whose names are lexicographically before
-- endOffset. If startOffset is also set, the objects listed will have
-- names between startOffset (inclusive) and endOffset (exclusive).
owaEndOffSet :: Lens' ObjectsWatchAll (Maybe Text)
owaEndOffSet
  = lens _owaEndOffSet (\ s a -> s{_owaEndOffSet = a})

-- | If true, objects that end in exactly one instance of delimiter will have
-- their metadata included in items in addition to prefixes.
owaIncludeTrailingDelimiter :: Lens' ObjectsWatchAll (Maybe Bool)
owaIncludeTrailingDelimiter
  = lens _owaIncludeTrailingDelimiter
      (\ s a -> s{_owaIncludeTrailingDelimiter = a})

-- | Set of properties to return. Defaults to noAcl.
owaProjection :: Lens' ObjectsWatchAll (Maybe ObjectsWatchAllProjection)
owaProjection
  = lens _owaProjection
      (\ s a -> s{_owaProjection = a})

-- | The project to be billed for this request if the target bucket is
-- requester-pays bucket.
owaProvisionalUserProject :: Lens' ObjectsWatchAll (Maybe Text)
owaProvisionalUserProject
  = lens _owaProvisionalUserProject
      (\ s a -> s{_owaProvisionalUserProject = a})

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

-- | Maximum number of items plus prefixes to return in a single page of
-- responses. As duplicate prefixes are omitted, fewer total results may be
-- returned than requested. The service will use this parameter or 1,000
-- items, whichever is smaller.
owaMaxResults :: Lens' ObjectsWatchAll Word32
owaMaxResults
  = lens _owaMaxResults
      (\ s a -> s{_owaMaxResults = a})
      . _Coerce

instance GoogleRequest ObjectsWatchAll where
        type Rs ObjectsWatchAll = Channel
        type Scopes ObjectsWatchAll =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient ObjectsWatchAll'{..}
          = go _owaBucket _owaStartOffSet _owaPrefix
              _owaVersions
              _owaUserProject
              _owaEndOffSet
              _owaIncludeTrailingDelimiter
              _owaProjection
              _owaProvisionalUserProject
              _owaPageToken
              _owaDelimiter
              (Just _owaMaxResults)
              (Just AltJSON)
              _owaPayload
              storageService
          where go
                  = buildClient
                      (Proxy :: Proxy ObjectsWatchAllResource)
                      mempty
