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
-- Module      : Network.Google.Resource.Books.CloudLoading.UpdateBook
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- |
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksCloudLoadingUpdateBook@.
module Network.Google.Resource.Books.CloudLoading.UpdateBook
    (
    -- * REST Resource
      CloudLoadingUpdateBookResource

    -- * Creating a Request
    , cloudLoadingUpdateBook'
    , CloudLoadingUpdateBook'

    -- * Request Lenses
    , clubQuotaUser
    , clubPrettyPrint
    , clubUserIP
    , clubPayload
    , clubKey
    , clubOAuthToken
    , clubFields
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksCloudLoadingUpdateBook@ which the
-- 'CloudLoadingUpdateBook'' request conforms to.
type CloudLoadingUpdateBookResource =
     "cloudloading" :>
       "updateBook" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] BooksCloudLoadingResource :>
                         Post '[JSON] BooksCloudLoadingResource

-- |
--
-- /See:/ 'cloudLoadingUpdateBook'' smart constructor.
data CloudLoadingUpdateBook' = CloudLoadingUpdateBook'
    { _clubQuotaUser   :: !(Maybe Text)
    , _clubPrettyPrint :: !Bool
    , _clubUserIP      :: !(Maybe Text)
    , _clubPayload     :: !BooksCloudLoadingResource
    , _clubKey         :: !(Maybe AuthKey)
    , _clubOAuthToken  :: !(Maybe OAuthToken)
    , _clubFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CloudLoadingUpdateBook'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'clubQuotaUser'
--
-- * 'clubPrettyPrint'
--
-- * 'clubUserIP'
--
-- * 'clubPayload'
--
-- * 'clubKey'
--
-- * 'clubOAuthToken'
--
-- * 'clubFields'
cloudLoadingUpdateBook'
    :: BooksCloudLoadingResource -- ^ 'payload'
    -> CloudLoadingUpdateBook'
cloudLoadingUpdateBook' pClubPayload_ =
    CloudLoadingUpdateBook'
    { _clubQuotaUser = Nothing
    , _clubPrettyPrint = True
    , _clubUserIP = Nothing
    , _clubPayload = pClubPayload_
    , _clubKey = Nothing
    , _clubOAuthToken = Nothing
    , _clubFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
clubQuotaUser :: Lens' CloudLoadingUpdateBook' (Maybe Text)
clubQuotaUser
  = lens _clubQuotaUser
      (\ s a -> s{_clubQuotaUser = a})

-- | Returns response with indentations and line breaks.
clubPrettyPrint :: Lens' CloudLoadingUpdateBook' Bool
clubPrettyPrint
  = lens _clubPrettyPrint
      (\ s a -> s{_clubPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
clubUserIP :: Lens' CloudLoadingUpdateBook' (Maybe Text)
clubUserIP
  = lens _clubUserIP (\ s a -> s{_clubUserIP = a})

-- | Multipart request metadata.
clubPayload :: Lens' CloudLoadingUpdateBook' BooksCloudLoadingResource
clubPayload
  = lens _clubPayload (\ s a -> s{_clubPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
clubKey :: Lens' CloudLoadingUpdateBook' (Maybe AuthKey)
clubKey = lens _clubKey (\ s a -> s{_clubKey = a})

-- | OAuth 2.0 token for the current user.
clubOAuthToken :: Lens' CloudLoadingUpdateBook' (Maybe OAuthToken)
clubOAuthToken
  = lens _clubOAuthToken
      (\ s a -> s{_clubOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
clubFields :: Lens' CloudLoadingUpdateBook' (Maybe Text)
clubFields
  = lens _clubFields (\ s a -> s{_clubFields = a})

instance GoogleAuth CloudLoadingUpdateBook' where
        authKey = clubKey . _Just
        authToken = clubOAuthToken . _Just

instance GoogleRequest CloudLoadingUpdateBook' where
        type Rs CloudLoadingUpdateBook' =
             BooksCloudLoadingResource
        request = requestWith booksRequest
        requestWith rq CloudLoadingUpdateBook'{..}
          = go _clubQuotaUser (Just _clubPrettyPrint)
              _clubUserIP
              _clubFields
              _clubKey
              _clubOAuthToken
              (Just AltJSON)
              _clubPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy CloudLoadingUpdateBookResource)
                      rq
