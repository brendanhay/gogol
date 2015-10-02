{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.MyLibrary.Annotations.Summary
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the summary of specified layers.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryAnnotationsSummary@.
module Network.Google.Resource.Books.MyLibrary.Annotations.Summary
    (
    -- * REST Resource
      MyLibraryAnnotationsSummaryResource

    -- * Creating a Request
    , myLibraryAnnotationsSummary'
    , MyLibraryAnnotationsSummary'

    -- * Request Lenses
    , mlasQuotaUser
    , mlasPrettyPrint
    , mlasUserIP
    , mlasKey
    , mlasLayerIds
    , mlasVolumeId
    , mlasOAuthToken
    , mlasFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryAnnotationsSummary@ which the
-- 'MyLibraryAnnotationsSummary'' request conforms to.
type MyLibraryAnnotationsSummaryResource =
     "mylibrary" :>
       "annotations" :>
         "summary" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParams "layerIds" Text :>
                     QueryParam "volumeId" Text :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             Post '[JSON] AnnotationsSummary

-- | Gets the summary of specified layers.
--
-- /See:/ 'myLibraryAnnotationsSummary'' smart constructor.
data MyLibraryAnnotationsSummary' = MyLibraryAnnotationsSummary'
    { _mlasQuotaUser   :: !(Maybe Text)
    , _mlasPrettyPrint :: !Bool
    , _mlasUserIP      :: !(Maybe Text)
    , _mlasKey         :: !(Maybe Key)
    , _mlasLayerIds    :: !Text
    , _mlasVolumeId    :: !Text
    , _mlasOAuthToken  :: !(Maybe OAuthToken)
    , _mlasFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryAnnotationsSummary'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlasQuotaUser'
--
-- * 'mlasPrettyPrint'
--
-- * 'mlasUserIP'
--
-- * 'mlasKey'
--
-- * 'mlasLayerIds'
--
-- * 'mlasVolumeId'
--
-- * 'mlasOAuthToken'
--
-- * 'mlasFields'
myLibraryAnnotationsSummary'
    :: Text -- ^ 'layerIds'
    -> Text -- ^ 'volumeId'
    -> MyLibraryAnnotationsSummary'
myLibraryAnnotationsSummary' pMlasLayerIds_ pMlasVolumeId_ =
    MyLibraryAnnotationsSummary'
    { _mlasQuotaUser = Nothing
    , _mlasPrettyPrint = True
    , _mlasUserIP = Nothing
    , _mlasKey = Nothing
    , _mlasLayerIds = pMlasLayerIds_
    , _mlasVolumeId = pMlasVolumeId_
    , _mlasOAuthToken = Nothing
    , _mlasFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlasQuotaUser :: Lens' MyLibraryAnnotationsSummary' (Maybe Text)
mlasQuotaUser
  = lens _mlasQuotaUser
      (\ s a -> s{_mlasQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlasPrettyPrint :: Lens' MyLibraryAnnotationsSummary' Bool
mlasPrettyPrint
  = lens _mlasPrettyPrint
      (\ s a -> s{_mlasPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlasUserIP :: Lens' MyLibraryAnnotationsSummary' (Maybe Text)
mlasUserIP
  = lens _mlasUserIP (\ s a -> s{_mlasUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlasKey :: Lens' MyLibraryAnnotationsSummary' (Maybe Key)
mlasKey = lens _mlasKey (\ s a -> s{_mlasKey = a})

-- | Array of layer IDs to get the summary for.
mlasLayerIds :: Lens' MyLibraryAnnotationsSummary' Text
mlasLayerIds
  = lens _mlasLayerIds (\ s a -> s{_mlasLayerIds = a})

-- | Volume id to get the summary for.
mlasVolumeId :: Lens' MyLibraryAnnotationsSummary' Text
mlasVolumeId
  = lens _mlasVolumeId (\ s a -> s{_mlasVolumeId = a})

-- | OAuth 2.0 token for the current user.
mlasOAuthToken :: Lens' MyLibraryAnnotationsSummary' (Maybe OAuthToken)
mlasOAuthToken
  = lens _mlasOAuthToken
      (\ s a -> s{_mlasOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mlasFields :: Lens' MyLibraryAnnotationsSummary' (Maybe Text)
mlasFields
  = lens _mlasFields (\ s a -> s{_mlasFields = a})

instance GoogleAuth MyLibraryAnnotationsSummary'
         where
        authKey = mlasKey . _Just
        authToken = mlasOAuthToken . _Just

instance GoogleRequest MyLibraryAnnotationsSummary'
         where
        type Rs MyLibraryAnnotationsSummary' =
             AnnotationsSummary
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MyLibraryAnnotationsSummary'{..}
          = go _mlasQuotaUser (Just _mlasPrettyPrint)
              _mlasUserIP
              _mlasKey
              (Just _mlasLayerIds)
              (Just _mlasVolumeId)
              _mlasOAuthToken
              _mlasFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MyLibraryAnnotationsSummaryResource)
                      r
                      u
