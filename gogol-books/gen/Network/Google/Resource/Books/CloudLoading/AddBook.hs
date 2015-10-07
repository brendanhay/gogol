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
-- Module      : Network.Google.Resource.Books.CloudLoading.AddBook
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- |
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksCloudLoadingAddBook@.
module Network.Google.Resource.Books.CloudLoading.AddBook
    (
    -- * REST Resource
      CloudLoadingAddBookResource

    -- * Creating a Request
    , cloudLoadingAddBook'
    , CloudLoadingAddBook'

    -- * Request Lenses
    , clabQuotaUser
    , clabPrettyPrint
    , clabUserIP
    , clabMimeType
    , clabUploadClientToken
    , clabKey
    , clabName
    , clabOAuthToken
    , clabDriveDocumentId
    , clabFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksCloudLoadingAddBook@ method which the
-- 'CloudLoadingAddBook'' request conforms to.
type CloudLoadingAddBookResource =
     "cloudloading" :>
       "addBook" :>
         QueryParam "mime_type" Text :>
           QueryParam "upload_client_token" Text :>
             QueryParam "name" Text :>
               QueryParam "drive_document_id" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Post '[JSON] BooksCloudLoadingResource

-- |
--
-- /See:/ 'cloudLoadingAddBook'' smart constructor.
data CloudLoadingAddBook' = CloudLoadingAddBook'
    { _clabQuotaUser         :: !(Maybe Text)
    , _clabPrettyPrint       :: !Bool
    , _clabUserIP            :: !(Maybe Text)
    , _clabMimeType          :: !(Maybe Text)
    , _clabUploadClientToken :: !(Maybe Text)
    , _clabKey               :: !(Maybe AuthKey)
    , _clabName              :: !(Maybe Text)
    , _clabOAuthToken        :: !(Maybe OAuthToken)
    , _clabDriveDocumentId   :: !(Maybe Text)
    , _clabFields            :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CloudLoadingAddBook'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clabQuotaUser'
--
-- * 'clabPrettyPrint'
--
-- * 'clabUserIP'
--
-- * 'clabMimeType'
--
-- * 'clabUploadClientToken'
--
-- * 'clabKey'
--
-- * 'clabName'
--
-- * 'clabOAuthToken'
--
-- * 'clabDriveDocumentId'
--
-- * 'clabFields'
cloudLoadingAddBook'
    :: CloudLoadingAddBook'
cloudLoadingAddBook' =
    CloudLoadingAddBook'
    { _clabQuotaUser = Nothing
    , _clabPrettyPrint = True
    , _clabUserIP = Nothing
    , _clabMimeType = Nothing
    , _clabUploadClientToken = Nothing
    , _clabKey = Nothing
    , _clabName = Nothing
    , _clabOAuthToken = Nothing
    , _clabDriveDocumentId = Nothing
    , _clabFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clabQuotaUser :: Lens' CloudLoadingAddBook' (Maybe Text)
clabQuotaUser
  = lens _clabQuotaUser
      (\ s a -> s{_clabQuotaUser = a})

-- | Returns response with indentations and line breaks.
clabPrettyPrint :: Lens' CloudLoadingAddBook' Bool
clabPrettyPrint
  = lens _clabPrettyPrint
      (\ s a -> s{_clabPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clabUserIP :: Lens' CloudLoadingAddBook' (Maybe Text)
clabUserIP
  = lens _clabUserIP (\ s a -> s{_clabUserIP = a})

-- | The document MIME type. It can be set only if the drive_document_id is
-- set.
clabMimeType :: Lens' CloudLoadingAddBook' (Maybe Text)
clabMimeType
  = lens _clabMimeType (\ s a -> s{_clabMimeType = a})

clabUploadClientToken :: Lens' CloudLoadingAddBook' (Maybe Text)
clabUploadClientToken
  = lens _clabUploadClientToken
      (\ s a -> s{_clabUploadClientToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clabKey :: Lens' CloudLoadingAddBook' (Maybe AuthKey)
clabKey = lens _clabKey (\ s a -> s{_clabKey = a})

-- | The document name. It can be set only if the drive_document_id is set.
clabName :: Lens' CloudLoadingAddBook' (Maybe Text)
clabName = lens _clabName (\ s a -> s{_clabName = a})

-- | OAuth 2.0 token for the current user.
clabOAuthToken :: Lens' CloudLoadingAddBook' (Maybe OAuthToken)
clabOAuthToken
  = lens _clabOAuthToken
      (\ s a -> s{_clabOAuthToken = a})

-- | A drive document id. The upload_client_token must not be set.
clabDriveDocumentId :: Lens' CloudLoadingAddBook' (Maybe Text)
clabDriveDocumentId
  = lens _clabDriveDocumentId
      (\ s a -> s{_clabDriveDocumentId = a})

-- | Selector specifying which fields to include in a partial response.
clabFields :: Lens' CloudLoadingAddBook' (Maybe Text)
clabFields
  = lens _clabFields (\ s a -> s{_clabFields = a})

instance GoogleAuth CloudLoadingAddBook' where
        _AuthKey = clabKey . _Just
        _AuthToken = clabOAuthToken . _Just

instance GoogleRequest CloudLoadingAddBook' where
        type Rs CloudLoadingAddBook' =
             BooksCloudLoadingResource
        request = requestWith booksRequest
        requestWith rq CloudLoadingAddBook'{..}
          = go _clabMimeType _clabUploadClientToken _clabName
              _clabDriveDocumentId
              _clabQuotaUser
              (Just _clabPrettyPrint)
              _clabUserIP
              _clabFields
              _clabKey
              _clabOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy CloudLoadingAddBookResource)
                      rq
