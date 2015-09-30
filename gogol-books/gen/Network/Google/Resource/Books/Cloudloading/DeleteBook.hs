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
-- Module      : Network.Google.Resource.Books.Cloudloading.DeleteBook
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Remove the book and its contents
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksCloudloadingDeleteBook@.
module Network.Google.Resource.Books.Cloudloading.DeleteBook
    (
    -- * REST Resource
      CloudloadingDeleteBookResource

    -- * Creating a Request
    , cloudloadingDeleteBook'
    , CloudloadingDeleteBook'

    -- * Request Lenses
    , cdbQuotaUser
    , cdbPrettyPrint
    , cdbUserIp
    , cdbKey
    , cdbVolumeId
    , cdbOauthToken
    , cdbFields
    , cdbAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksCloudloadingDeleteBook@ which the
-- 'CloudloadingDeleteBook'' request conforms to.
type CloudloadingDeleteBookResource =
     "cloudloading" :>
       "deleteBook" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "volumeId" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] ()

-- | Remove the book and its contents
--
-- /See:/ 'cloudloadingDeleteBook'' smart constructor.
data CloudloadingDeleteBook' = CloudloadingDeleteBook'
    { _cdbQuotaUser   :: !(Maybe Text)
    , _cdbPrettyPrint :: !Bool
    , _cdbUserIp      :: !(Maybe Text)
    , _cdbKey         :: !(Maybe Text)
    , _cdbVolumeId    :: !Text
    , _cdbOauthToken  :: !(Maybe Text)
    , _cdbFields      :: !(Maybe Text)
    , _cdbAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CloudloadingDeleteBook'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdbQuotaUser'
--
-- * 'cdbPrettyPrint'
--
-- * 'cdbUserIp'
--
-- * 'cdbKey'
--
-- * 'cdbVolumeId'
--
-- * 'cdbOauthToken'
--
-- * 'cdbFields'
--
-- * 'cdbAlt'
cloudloadingDeleteBook'
    :: Text -- ^ 'volumeId'
    -> CloudloadingDeleteBook'
cloudloadingDeleteBook' pCdbVolumeId_ =
    CloudloadingDeleteBook'
    { _cdbQuotaUser = Nothing
    , _cdbPrettyPrint = True
    , _cdbUserIp = Nothing
    , _cdbKey = Nothing
    , _cdbVolumeId = pCdbVolumeId_
    , _cdbOauthToken = Nothing
    , _cdbFields = Nothing
    , _cdbAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdbQuotaUser :: Lens' CloudloadingDeleteBook' (Maybe Text)
cdbQuotaUser
  = lens _cdbQuotaUser (\ s a -> s{_cdbQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdbPrettyPrint :: Lens' CloudloadingDeleteBook' Bool
cdbPrettyPrint
  = lens _cdbPrettyPrint
      (\ s a -> s{_cdbPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdbUserIp :: Lens' CloudloadingDeleteBook' (Maybe Text)
cdbUserIp
  = lens _cdbUserIp (\ s a -> s{_cdbUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdbKey :: Lens' CloudloadingDeleteBook' (Maybe Text)
cdbKey = lens _cdbKey (\ s a -> s{_cdbKey = a})

-- | The id of the book to be removed.
cdbVolumeId :: Lens' CloudloadingDeleteBook' Text
cdbVolumeId
  = lens _cdbVolumeId (\ s a -> s{_cdbVolumeId = a})

-- | OAuth 2.0 token for the current user.
cdbOauthToken :: Lens' CloudloadingDeleteBook' (Maybe Text)
cdbOauthToken
  = lens _cdbOauthToken
      (\ s a -> s{_cdbOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdbFields :: Lens' CloudloadingDeleteBook' (Maybe Text)
cdbFields
  = lens _cdbFields (\ s a -> s{_cdbFields = a})

-- | Data format for the response.
cdbAlt :: Lens' CloudloadingDeleteBook' Alt
cdbAlt = lens _cdbAlt (\ s a -> s{_cdbAlt = a})

instance GoogleRequest CloudloadingDeleteBook' where
        type Rs CloudloadingDeleteBook' = ()
        request = requestWithRoute defReq booksURL
        requestWithRoute r u CloudloadingDeleteBook'{..}
          = go _cdbQuotaUser (Just _cdbPrettyPrint) _cdbUserIp
              _cdbKey
              (Just _cdbVolumeId)
              _cdbOauthToken
              _cdbFields
              (Just _cdbAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CloudloadingDeleteBookResource)
                      r
                      u
