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
-- Module      : Network.Google.Resource.Books.MyLibrary.Annotations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of annotations, possibly filtered.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryAnnotationsList@.
module Network.Google.Resource.Books.MyLibrary.Annotations.List
    (
    -- * REST Resource
      MyLibraryAnnotationsListResource

    -- * Creating a Request
    , myLibraryAnnotationsList'
    , MyLibraryAnnotationsList'

    -- * Request Lenses
    , mlalQuotaUser
    , mlalPrettyPrint
    , mlalUserIP
    , mlalContentVersion
    , mlalShowDeleted
    , mlalUpdatedMax
    , mlalKey
    , mlalUpdatedMin
    , mlalLayerIds
    , mlalVolumeId
    , mlalSource
    , mlalPageToken
    , mlalOAuthToken
    , mlalLayerId
    , mlalMaxResults
    , mlalFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryAnnotationsList@ which the
-- 'MyLibraryAnnotationsList'' request conforms to.
type MyLibraryAnnotationsListResource =
     "mylibrary" :>
       "annotations" :>
         QueryParam "contentVersion" Text :>
           QueryParam "showDeleted" Bool :>
             QueryParam "updatedMax" Text :>
               QueryParam "updatedMin" Text :>
                 QueryParams "layerIds" Text :>
                   QueryParam "volumeId" Text :>
                     QueryParam "source" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "layerId" Text :>
                           QueryParam "maxResults" Word32 :>
                             QueryParam "quotaUser" Text :>
                               QueryParam "prettyPrint" Bool :>
                                 QueryParam "userIp" Text :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" AuthKey :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           Get '[JSON] Annotations

-- | Retrieves a list of annotations, possibly filtered.
--
-- /See:/ 'myLibraryAnnotationsList'' smart constructor.
data MyLibraryAnnotationsList' = MyLibraryAnnotationsList'
    { _mlalQuotaUser      :: !(Maybe Text)
    , _mlalPrettyPrint    :: !Bool
    , _mlalUserIP         :: !(Maybe Text)
    , _mlalContentVersion :: !(Maybe Text)
    , _mlalShowDeleted    :: !(Maybe Bool)
    , _mlalUpdatedMax     :: !(Maybe Text)
    , _mlalKey            :: !(Maybe AuthKey)
    , _mlalUpdatedMin     :: !(Maybe Text)
    , _mlalLayerIds       :: !(Maybe [Text])
    , _mlalVolumeId       :: !(Maybe Text)
    , _mlalSource         :: !(Maybe Text)
    , _mlalPageToken      :: !(Maybe Text)
    , _mlalOAuthToken     :: !(Maybe OAuthToken)
    , _mlalLayerId        :: !(Maybe Text)
    , _mlalMaxResults     :: !(Maybe Word32)
    , _mlalFields         :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryAnnotationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlalQuotaUser'
--
-- * 'mlalPrettyPrint'
--
-- * 'mlalUserIP'
--
-- * 'mlalContentVersion'
--
-- * 'mlalShowDeleted'
--
-- * 'mlalUpdatedMax'
--
-- * 'mlalKey'
--
-- * 'mlalUpdatedMin'
--
-- * 'mlalLayerIds'
--
-- * 'mlalVolumeId'
--
-- * 'mlalSource'
--
-- * 'mlalPageToken'
--
-- * 'mlalOAuthToken'
--
-- * 'mlalLayerId'
--
-- * 'mlalMaxResults'
--
-- * 'mlalFields'
myLibraryAnnotationsList'
    :: MyLibraryAnnotationsList'
myLibraryAnnotationsList' =
    MyLibraryAnnotationsList'
    { _mlalQuotaUser = Nothing
    , _mlalPrettyPrint = True
    , _mlalUserIP = Nothing
    , _mlalContentVersion = Nothing
    , _mlalShowDeleted = Nothing
    , _mlalUpdatedMax = Nothing
    , _mlalKey = Nothing
    , _mlalUpdatedMin = Nothing
    , _mlalLayerIds = Nothing
    , _mlalVolumeId = Nothing
    , _mlalSource = Nothing
    , _mlalPageToken = Nothing
    , _mlalOAuthToken = Nothing
    , _mlalLayerId = Nothing
    , _mlalMaxResults = Nothing
    , _mlalFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlalQuotaUser :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalQuotaUser
  = lens _mlalQuotaUser
      (\ s a -> s{_mlalQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlalPrettyPrint :: Lens' MyLibraryAnnotationsList' Bool
mlalPrettyPrint
  = lens _mlalPrettyPrint
      (\ s a -> s{_mlalPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlalUserIP :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalUserIP
  = lens _mlalUserIP (\ s a -> s{_mlalUserIP = a})

-- | The content version for the requested volume.
mlalContentVersion :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalContentVersion
  = lens _mlalContentVersion
      (\ s a -> s{_mlalContentVersion = a})

-- | Set to true to return deleted annotations. updatedMin must be in the
-- request to use this. Defaults to false.
mlalShowDeleted :: Lens' MyLibraryAnnotationsList' (Maybe Bool)
mlalShowDeleted
  = lens _mlalShowDeleted
      (\ s a -> s{_mlalShowDeleted = a})

-- | RFC 3339 timestamp to restrict to items updated prior to this timestamp
-- (exclusive).
mlalUpdatedMax :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalUpdatedMax
  = lens _mlalUpdatedMax
      (\ s a -> s{_mlalUpdatedMax = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlalKey :: Lens' MyLibraryAnnotationsList' (Maybe AuthKey)
mlalKey = lens _mlalKey (\ s a -> s{_mlalKey = a})

-- | RFC 3339 timestamp to restrict to items updated since this timestamp
-- (inclusive).
mlalUpdatedMin :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalUpdatedMin
  = lens _mlalUpdatedMin
      (\ s a -> s{_mlalUpdatedMin = a})

-- | The layer ID(s) to limit annotation by.
mlalLayerIds :: Lens' MyLibraryAnnotationsList' [Text]
mlalLayerIds
  = lens _mlalLayerIds (\ s a -> s{_mlalLayerIds = a})
      . _Default
      . _Coerce

-- | The volume to restrict annotations to.
mlalVolumeId :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalVolumeId
  = lens _mlalVolumeId (\ s a -> s{_mlalVolumeId = a})

-- | String to identify the originator of this request.
mlalSource :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalSource
  = lens _mlalSource (\ s a -> s{_mlalSource = a})

-- | The value of the nextToken from the previous page.
mlalPageToken :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalPageToken
  = lens _mlalPageToken
      (\ s a -> s{_mlalPageToken = a})

-- | OAuth 2.0 token for the current user.
mlalOAuthToken :: Lens' MyLibraryAnnotationsList' (Maybe OAuthToken)
mlalOAuthToken
  = lens _mlalOAuthToken
      (\ s a -> s{_mlalOAuthToken = a})

-- | The layer ID to limit annotation by.
mlalLayerId :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalLayerId
  = lens _mlalLayerId (\ s a -> s{_mlalLayerId = a})

-- | Maximum number of results to return
mlalMaxResults :: Lens' MyLibraryAnnotationsList' (Maybe Word32)
mlalMaxResults
  = lens _mlalMaxResults
      (\ s a -> s{_mlalMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
mlalFields :: Lens' MyLibraryAnnotationsList' (Maybe Text)
mlalFields
  = lens _mlalFields (\ s a -> s{_mlalFields = a})

instance GoogleAuth MyLibraryAnnotationsList' where
        authKey = mlalKey . _Just
        authToken = mlalOAuthToken . _Just

instance GoogleRequest MyLibraryAnnotationsList'
         where
        type Rs MyLibraryAnnotationsList' = Annotations
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MyLibraryAnnotationsList'{..}
          = go _mlalContentVersion _mlalShowDeleted
              _mlalUpdatedMax
              _mlalUpdatedMin
              (_mlalLayerIds ^. _Default)
              _mlalVolumeId
              _mlalSource
              _mlalPageToken
              _mlalLayerId
              _mlalMaxResults
              _mlalQuotaUser
              (Just _mlalPrettyPrint)
              _mlalUserIP
              _mlalFields
              _mlalKey
              _mlalOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MyLibraryAnnotationsListResource)
                      r
                      u
