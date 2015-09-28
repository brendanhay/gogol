{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Books.Cloudloading.AddBook
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- |
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.cloudloading.addBook@.
module Network.Google.API.Books.Cloudloading.AddBook
    (
    -- * REST Resource
      CloudloadingAddBookAPI

    -- * Creating a Request
    , cloudloadingAddBook'
    , CloudloadingAddBook'

    -- * Request Lenses
    , cabQuotaUser
    , cabPrettyPrint
    , cabUserIp
    , cabMimeType
    , cabUploadClientToken
    , cabKey
    , cabName
    , cabOauthToken
    , cabDriveDocumentId
    , cabFields
    , cabAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for books.cloudloading.addBook which the
-- 'CloudloadingAddBook'' request conforms to.
type CloudloadingAddBookAPI =
     "cloudloading" :>
       "addBook" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "mime_type" Text :>
                 QueryParam "upload_client_token" Text :>
                   QueryParam "key" Text :>
                     QueryParam "name" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "drive_document_id" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :>
                               Post '[JSON] BooksCloudloadingResource

-- |
--
-- /See:/ 'cloudloadingAddBook'' smart constructor.
data CloudloadingAddBook' = CloudloadingAddBook'
    { _cabQuotaUser         :: !(Maybe Text)
    , _cabPrettyPrint       :: !Bool
    , _cabUserIp            :: !(Maybe Text)
    , _cabMimeType          :: !(Maybe Text)
    , _cabUploadClientToken :: !(Maybe Text)
    , _cabKey               :: !(Maybe Text)
    , _cabName              :: !(Maybe Text)
    , _cabOauthToken        :: !(Maybe Text)
    , _cabDriveDocumentId   :: !(Maybe Text)
    , _cabFields            :: !(Maybe Text)
    , _cabAlt               :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CloudloadingAddBook'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cabQuotaUser'
--
-- * 'cabPrettyPrint'
--
-- * 'cabUserIp'
--
-- * 'cabMimeType'
--
-- * 'cabUploadClientToken'
--
-- * 'cabKey'
--
-- * 'cabName'
--
-- * 'cabOauthToken'
--
-- * 'cabDriveDocumentId'
--
-- * 'cabFields'
--
-- * 'cabAlt'
cloudloadingAddBook'
    :: CloudloadingAddBook'
cloudloadingAddBook' =
    CloudloadingAddBook'
    { _cabQuotaUser = Nothing
    , _cabPrettyPrint = True
    , _cabUserIp = Nothing
    , _cabMimeType = Nothing
    , _cabUploadClientToken = Nothing
    , _cabKey = Nothing
    , _cabName = Nothing
    , _cabOauthToken = Nothing
    , _cabDriveDocumentId = Nothing
    , _cabFields = Nothing
    , _cabAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cabQuotaUser :: Lens' CloudloadingAddBook' (Maybe Text)
cabQuotaUser
  = lens _cabQuotaUser (\ s a -> s{_cabQuotaUser = a})

-- | Returns response with indentations and line breaks.
cabPrettyPrint :: Lens' CloudloadingAddBook' Bool
cabPrettyPrint
  = lens _cabPrettyPrint
      (\ s a -> s{_cabPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cabUserIp :: Lens' CloudloadingAddBook' (Maybe Text)
cabUserIp
  = lens _cabUserIp (\ s a -> s{_cabUserIp = a})

-- | The document MIME type. It can be set only if the drive_document_id is
-- set.
cabMimeType :: Lens' CloudloadingAddBook' (Maybe Text)
cabMimeType
  = lens _cabMimeType (\ s a -> s{_cabMimeType = a})

cabUploadClientToken :: Lens' CloudloadingAddBook' (Maybe Text)
cabUploadClientToken
  = lens _cabUploadClientToken
      (\ s a -> s{_cabUploadClientToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cabKey :: Lens' CloudloadingAddBook' (Maybe Text)
cabKey = lens _cabKey (\ s a -> s{_cabKey = a})

-- | The document name. It can be set only if the drive_document_id is set.
cabName :: Lens' CloudloadingAddBook' (Maybe Text)
cabName = lens _cabName (\ s a -> s{_cabName = a})

-- | OAuth 2.0 token for the current user.
cabOauthToken :: Lens' CloudloadingAddBook' (Maybe Text)
cabOauthToken
  = lens _cabOauthToken
      (\ s a -> s{_cabOauthToken = a})

-- | A drive document id. The upload_client_token must not be set.
cabDriveDocumentId :: Lens' CloudloadingAddBook' (Maybe Text)
cabDriveDocumentId
  = lens _cabDriveDocumentId
      (\ s a -> s{_cabDriveDocumentId = a})

-- | Selector specifying which fields to include in a partial response.
cabFields :: Lens' CloudloadingAddBook' (Maybe Text)
cabFields
  = lens _cabFields (\ s a -> s{_cabFields = a})

-- | Data format for the response.
cabAlt :: Lens' CloudloadingAddBook' Alt
cabAlt = lens _cabAlt (\ s a -> s{_cabAlt = a})

instance GoogleRequest CloudloadingAddBook' where
        type Rs CloudloadingAddBook' =
             BooksCloudloadingResource
        request = requestWithRoute defReq booksURL
        requestWithRoute r u CloudloadingAddBook'{..}
          = go _cabQuotaUser (Just _cabPrettyPrint) _cabUserIp
              _cabMimeType
              _cabUploadClientToken
              _cabKey
              _cabName
              _cabOauthToken
              _cabDriveDocumentId
              _cabFields
              (Just _cabAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CloudloadingAddBookAPI)
                      r
                      u
