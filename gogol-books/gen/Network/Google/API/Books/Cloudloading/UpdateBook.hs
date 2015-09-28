{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Books.Cloudloading.UpdateBook
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- |
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.cloudloading.updateBook@.
module Network.Google.API.Books.Cloudloading.UpdateBook
    (
    -- * REST Resource
      CloudloadingUpdateBookAPI

    -- * Creating a Request
    , cloudloadingUpdateBook'
    , CloudloadingUpdateBook'

    -- * Request Lenses
    , cubQuotaUser
    , cubPrettyPrint
    , cubUserIp
    , cubKey
    , cubOauthToken
    , cubFields
    , cubAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for books.cloudloading.updateBook which the
-- 'CloudloadingUpdateBook'' request conforms to.
type CloudloadingUpdateBookAPI =
     "cloudloading" :>
       "updateBook" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "key" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Post '[JSON] BooksCloudloadingResource

-- |
--
-- /See:/ 'cloudloadingUpdateBook'' smart constructor.
data CloudloadingUpdateBook' = CloudloadingUpdateBook'
    { _cubQuotaUser   :: !(Maybe Text)
    , _cubPrettyPrint :: !Bool
    , _cubUserIp      :: !(Maybe Text)
    , _cubKey         :: !(Maybe Text)
    , _cubOauthToken  :: !(Maybe Text)
    , _cubFields      :: !(Maybe Text)
    , _cubAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CloudloadingUpdateBook'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cubQuotaUser'
--
-- * 'cubPrettyPrint'
--
-- * 'cubUserIp'
--
-- * 'cubKey'
--
-- * 'cubOauthToken'
--
-- * 'cubFields'
--
-- * 'cubAlt'
cloudloadingUpdateBook'
    :: CloudloadingUpdateBook'
cloudloadingUpdateBook' =
    CloudloadingUpdateBook'
    { _cubQuotaUser = Nothing
    , _cubPrettyPrint = True
    , _cubUserIp = Nothing
    , _cubKey = Nothing
    , _cubOauthToken = Nothing
    , _cubFields = Nothing
    , _cubAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cubQuotaUser :: Lens' CloudloadingUpdateBook' (Maybe Text)
cubQuotaUser
  = lens _cubQuotaUser (\ s a -> s{_cubQuotaUser = a})

-- | Returns response with indentations and line breaks.
cubPrettyPrint :: Lens' CloudloadingUpdateBook' Bool
cubPrettyPrint
  = lens _cubPrettyPrint
      (\ s a -> s{_cubPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cubUserIp :: Lens' CloudloadingUpdateBook' (Maybe Text)
cubUserIp
  = lens _cubUserIp (\ s a -> s{_cubUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cubKey :: Lens' CloudloadingUpdateBook' (Maybe Text)
cubKey = lens _cubKey (\ s a -> s{_cubKey = a})

-- | OAuth 2.0 token for the current user.
cubOauthToken :: Lens' CloudloadingUpdateBook' (Maybe Text)
cubOauthToken
  = lens _cubOauthToken
      (\ s a -> s{_cubOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cubFields :: Lens' CloudloadingUpdateBook' (Maybe Text)
cubFields
  = lens _cubFields (\ s a -> s{_cubFields = a})

-- | Data format for the response.
cubAlt :: Lens' CloudloadingUpdateBook' Alt
cubAlt = lens _cubAlt (\ s a -> s{_cubAlt = a})

instance GoogleRequest CloudloadingUpdateBook' where
        type Rs CloudloadingUpdateBook' =
             BooksCloudloadingResource
        request = requestWithRoute defReq booksURL
        requestWithRoute r u CloudloadingUpdateBook'{..}
          = go _cubQuotaUser (Just _cubPrettyPrint) _cubUserIp
              _cubKey
              _cubOauthToken
              _cubFields
              (Just _cubAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CloudloadingUpdateBookAPI)
                      r
                      u
