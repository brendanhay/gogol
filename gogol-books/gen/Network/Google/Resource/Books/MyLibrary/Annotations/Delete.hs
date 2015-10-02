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
-- Module      : Network.Google.Resource.Books.MyLibrary.Annotations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an annotation.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryAnnotationsDelete@.
module Network.Google.Resource.Books.MyLibrary.Annotations.Delete
    (
    -- * REST Resource
      MyLibraryAnnotationsDeleteResource

    -- * Creating a Request
    , myLibraryAnnotationsDelete'
    , MyLibraryAnnotationsDelete'

    -- * Request Lenses
    , mladQuotaUser
    , mladPrettyPrint
    , mladUserIP
    , mladKey
    , mladAnnotationId
    , mladSource
    , mladOAuthToken
    , mladFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryAnnotationsDelete@ which the
-- 'MyLibraryAnnotationsDelete'' request conforms to.
type MyLibraryAnnotationsDeleteResource =
     "mylibrary" :>
       "annotations" :>
         Capture "annotationId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "source" Text :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an annotation.
--
-- /See:/ 'myLibraryAnnotationsDelete'' smart constructor.
data MyLibraryAnnotationsDelete' = MyLibraryAnnotationsDelete'
    { _mladQuotaUser    :: !(Maybe Text)
    , _mladPrettyPrint  :: !Bool
    , _mladUserIP       :: !(Maybe Text)
    , _mladKey          :: !(Maybe Key)
    , _mladAnnotationId :: !Text
    , _mladSource       :: !(Maybe Text)
    , _mladOAuthToken   :: !(Maybe OAuthToken)
    , _mladFields       :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryAnnotationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mladQuotaUser'
--
-- * 'mladPrettyPrint'
--
-- * 'mladUserIP'
--
-- * 'mladKey'
--
-- * 'mladAnnotationId'
--
-- * 'mladSource'
--
-- * 'mladOAuthToken'
--
-- * 'mladFields'
myLibraryAnnotationsDelete'
    :: Text -- ^ 'annotationId'
    -> MyLibraryAnnotationsDelete'
myLibraryAnnotationsDelete' pMladAnnotationId_ =
    MyLibraryAnnotationsDelete'
    { _mladQuotaUser = Nothing
    , _mladPrettyPrint = True
    , _mladUserIP = Nothing
    , _mladKey = Nothing
    , _mladAnnotationId = pMladAnnotationId_
    , _mladSource = Nothing
    , _mladOAuthToken = Nothing
    , _mladFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mladQuotaUser :: Lens' MyLibraryAnnotationsDelete' (Maybe Text)
mladQuotaUser
  = lens _mladQuotaUser
      (\ s a -> s{_mladQuotaUser = a})

-- | Returns response with indentations and line breaks.
mladPrettyPrint :: Lens' MyLibraryAnnotationsDelete' Bool
mladPrettyPrint
  = lens _mladPrettyPrint
      (\ s a -> s{_mladPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mladUserIP :: Lens' MyLibraryAnnotationsDelete' (Maybe Text)
mladUserIP
  = lens _mladUserIP (\ s a -> s{_mladUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mladKey :: Lens' MyLibraryAnnotationsDelete' (Maybe Key)
mladKey = lens _mladKey (\ s a -> s{_mladKey = a})

-- | The ID for the annotation to delete.
mladAnnotationId :: Lens' MyLibraryAnnotationsDelete' Text
mladAnnotationId
  = lens _mladAnnotationId
      (\ s a -> s{_mladAnnotationId = a})

-- | String to identify the originator of this request.
mladSource :: Lens' MyLibraryAnnotationsDelete' (Maybe Text)
mladSource
  = lens _mladSource (\ s a -> s{_mladSource = a})

-- | OAuth 2.0 token for the current user.
mladOAuthToken :: Lens' MyLibraryAnnotationsDelete' (Maybe OAuthToken)
mladOAuthToken
  = lens _mladOAuthToken
      (\ s a -> s{_mladOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
mladFields :: Lens' MyLibraryAnnotationsDelete' (Maybe Text)
mladFields
  = lens _mladFields (\ s a -> s{_mladFields = a})

instance GoogleAuth MyLibraryAnnotationsDelete' where
        authKey = mladKey . _Just
        authToken = mladOAuthToken . _Just

instance GoogleRequest MyLibraryAnnotationsDelete'
         where
        type Rs MyLibraryAnnotationsDelete' = ()
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MyLibraryAnnotationsDelete'{..}
          = go _mladQuotaUser (Just _mladPrettyPrint)
              _mladUserIP
              _mladKey
              _mladAnnotationId
              _mladSource
              _mladOAuthToken
              _mladFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MyLibraryAnnotationsDeleteResource)
                      r
                      u
