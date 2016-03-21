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
-- Module      : Network.Google.Resource.Storage.Objects.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of objects matching the criteria.
--
-- /See:/ <https://developers.google.com/storage/docs/json_api/ Cloud Storage JSON API Reference> for @storage.objects.list@.
module Network.Google.Resource.Storage.Objects.List
    (
    -- * REST Resource
      ObjectsListResource

    -- * Creating a Request
    , objectsList
    , ObjectsList

    -- * Request Lenses
    , olPrefix
    , olBucket
    , olVersions
    , olProjection
    , olPageToken
    , olDelimiter
    , olMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.Storage.Types

-- | A resource alias for @storage.objects.list@ method which the
-- 'ObjectsList' request conforms to.
type ObjectsListResource =
     "storage" :>
       "v1" :>
         "b" :>
           Capture "bucket" Text :>
             "o" :>
               QueryParam "prefix" Text :>
                 QueryParam "versions" Bool :>
                   QueryParam "projection" ObjectsListProjection :>
                     QueryParam "pageToken" Text :>
                       QueryParam "delimiter" Text :>
                         QueryParam "maxResults" (Textual Word32) :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Objects

-- | Retrieves a list of objects matching the criteria.
--
-- /See:/ 'objectsList' smart constructor.
data ObjectsList = ObjectsList'
    { _olPrefix     :: !(Maybe Text)
    , _olBucket     :: !Text
    , _olVersions   :: !(Maybe Bool)
    , _olProjection :: !(Maybe ObjectsListProjection)
    , _olPageToken  :: !(Maybe Text)
    , _olDelimiter  :: !(Maybe Text)
    , _olMaxResults :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ObjectsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olPrefix'
--
-- * 'olBucket'
--
-- * 'olVersions'
--
-- * 'olProjection'
--
-- * 'olPageToken'
--
-- * 'olDelimiter'
--
-- * 'olMaxResults'
objectsList
    :: Text -- ^ 'olBucket'
    -> ObjectsList
objectsList pOlBucket_ =
    ObjectsList'
    { _olPrefix = Nothing
    , _olBucket = pOlBucket_
    , _olVersions = Nothing
    , _olProjection = Nothing
    , _olPageToken = Nothing
    , _olDelimiter = Nothing
    , _olMaxResults = Nothing
    }

-- | Filter results to objects whose names begin with this prefix.
olPrefix :: Lens' ObjectsList (Maybe Text)
olPrefix = lens _olPrefix (\ s a -> s{_olPrefix = a})

-- | Name of the bucket in which to look for objects.
olBucket :: Lens' ObjectsList Text
olBucket = lens _olBucket (\ s a -> s{_olBucket = a})

-- | If true, lists all versions of an object as distinct results. The
-- default is false. For more information, see Object Versioning.
olVersions :: Lens' ObjectsList (Maybe Bool)
olVersions
  = lens _olVersions (\ s a -> s{_olVersions = a})

-- | Set of properties to return. Defaults to noAcl.
olProjection :: Lens' ObjectsList (Maybe ObjectsListProjection)
olProjection
  = lens _olProjection (\ s a -> s{_olProjection = a})

-- | A previously-returned page token representing part of the larger set of
-- results to view.
olPageToken :: Lens' ObjectsList (Maybe Text)
olPageToken
  = lens _olPageToken (\ s a -> s{_olPageToken = a})

-- | Returns results in a directory-like mode. items will contain only
-- objects whose names, aside from the prefix, do not contain delimiter.
-- Objects whose names, aside from the prefix, contain delimiter will have
-- their name, truncated after the delimiter, returned in prefixes.
-- Duplicate prefixes are omitted.
olDelimiter :: Lens' ObjectsList (Maybe Text)
olDelimiter
  = lens _olDelimiter (\ s a -> s{_olDelimiter = a})

-- | Maximum number of items plus prefixes to return. As duplicate prefixes
-- are omitted, fewer total results may be returned than requested. The
-- default value of this parameter is 1,000 items.
olMaxResults :: Lens' ObjectsList (Maybe Word32)
olMaxResults
  = lens _olMaxResults (\ s a -> s{_olMaxResults = a})
      . mapping _Coerce

instance GoogleRequest ObjectsList where
        type Rs ObjectsList = Objects
        type Scopes ObjectsList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/devstorage.full_control",
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/devstorage.read_write"]
        requestClient ObjectsList'{..}
          = go _olBucket _olPrefix _olVersions _olProjection
              _olPageToken
              _olDelimiter
              _olMaxResults
              (Just AltJSON)
              storageService
          where go
                  = buildClient (Proxy :: Proxy ObjectsListResource)
                      mempty
