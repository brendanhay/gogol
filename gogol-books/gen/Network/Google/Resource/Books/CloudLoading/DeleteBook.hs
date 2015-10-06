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
-- Module      : Network.Google.Resource.Books.CloudLoading.DeleteBook
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove the book and its contents
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksCloudLoadingDeleteBook@.
module Network.Google.Resource.Books.CloudLoading.DeleteBook
    (
    -- * REST Resource
      CloudLoadingDeleteBookResource

    -- * Creating a Request
    , cloudLoadingDeleteBook'
    , CloudLoadingDeleteBook'

    -- * Request Lenses
    , cldbQuotaUser
    , cldbPrettyPrint
    , cldbUserIP
    , cldbKey
    , cldbVolumeId
    , cldbOAuthToken
    , cldbFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksCloudLoadingDeleteBook@ which the
-- 'CloudLoadingDeleteBook'' request conforms to.
type CloudLoadingDeleteBookResource =
     "cloudloading" :>
       "deleteBook" :>
         QueryParam "volumeId" Text :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Remove the book and its contents
--
-- /See:/ 'cloudLoadingDeleteBook'' smart constructor.
data CloudLoadingDeleteBook' = CloudLoadingDeleteBook'
    { _cldbQuotaUser   :: !(Maybe Text)
    , _cldbPrettyPrint :: !Bool
    , _cldbUserIP      :: !(Maybe Text)
    , _cldbKey         :: !(Maybe AuthKey)
    , _cldbVolumeId    :: !Text
    , _cldbOAuthToken  :: !(Maybe OAuthToken)
    , _cldbFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CloudLoadingDeleteBook'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cldbQuotaUser'
--
-- * 'cldbPrettyPrint'
--
-- * 'cldbUserIP'
--
-- * 'cldbKey'
--
-- * 'cldbVolumeId'
--
-- * 'cldbOAuthToken'
--
-- * 'cldbFields'
cloudLoadingDeleteBook'
    :: Text -- ^ 'volumeId'
    -> CloudLoadingDeleteBook'
cloudLoadingDeleteBook' pCldbVolumeId_ =
    CloudLoadingDeleteBook'
    { _cldbQuotaUser = Nothing
    , _cldbPrettyPrint = True
    , _cldbUserIP = Nothing
    , _cldbKey = Nothing
    , _cldbVolumeId = pCldbVolumeId_
    , _cldbOAuthToken = Nothing
    , _cldbFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cldbQuotaUser :: Lens' CloudLoadingDeleteBook' (Maybe Text)
cldbQuotaUser
  = lens _cldbQuotaUser
      (\ s a -> s{_cldbQuotaUser = a})

-- | Returns response with indentations and line breaks.
cldbPrettyPrint :: Lens' CloudLoadingDeleteBook' Bool
cldbPrettyPrint
  = lens _cldbPrettyPrint
      (\ s a -> s{_cldbPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cldbUserIP :: Lens' CloudLoadingDeleteBook' (Maybe Text)
cldbUserIP
  = lens _cldbUserIP (\ s a -> s{_cldbUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cldbKey :: Lens' CloudLoadingDeleteBook' (Maybe AuthKey)
cldbKey = lens _cldbKey (\ s a -> s{_cldbKey = a})

-- | The id of the book to be removed.
cldbVolumeId :: Lens' CloudLoadingDeleteBook' Text
cldbVolumeId
  = lens _cldbVolumeId (\ s a -> s{_cldbVolumeId = a})

-- | OAuth 2.0 token for the current user.
cldbOAuthToken :: Lens' CloudLoadingDeleteBook' (Maybe OAuthToken)
cldbOAuthToken
  = lens _cldbOAuthToken
      (\ s a -> s{_cldbOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cldbFields :: Lens' CloudLoadingDeleteBook' (Maybe Text)
cldbFields
  = lens _cldbFields (\ s a -> s{_cldbFields = a})

instance GoogleAuth CloudLoadingDeleteBook' where
        authKey = cldbKey . _Just
        authToken = cldbOAuthToken . _Just

instance GoogleRequest CloudLoadingDeleteBook' where
        type Rs CloudLoadingDeleteBook' = ()
        request = requestWith booksRequest
        requestWith rq CloudLoadingDeleteBook'{..}
          = go (Just _cldbVolumeId) _cldbQuotaUser
              (Just _cldbPrettyPrint)
              _cldbUserIP
              _cldbFields
              _cldbKey
              _cldbOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy CloudLoadingDeleteBookResource)
                      rq
