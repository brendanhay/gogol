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
-- Module      : Network.Google.Resource.Books.Mylibrary.Annotations.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new annotation.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMylibraryAnnotationsInsert@.
module Network.Google.Resource.Books.Mylibrary.Annotations.Insert
    (
    -- * REST Resource
      MylibraryAnnotationsInsertResource

    -- * Creating a Request
    , mylibraryAnnotationsInsert'
    , MylibraryAnnotationsInsert'

    -- * Request Lenses
    , maiQuotaUser
    , maiPrettyPrint
    , maiCountry
    , maiUserIp
    , maiKey
    , maiShowOnlySummaryInResponse
    , maiSource
    , maiOauthToken
    , maiFields
    , maiAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMylibraryAnnotationsInsert@ which the
-- 'MylibraryAnnotationsInsert'' request conforms to.
type MylibraryAnnotationsInsertResource =
     "mylibrary" :>
       "annotations" :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "country" Text :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "showOnlySummaryInResponse" Bool :>
                     QueryParam "source" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Annotation

-- | Inserts a new annotation.
--
-- /See:/ 'mylibraryAnnotationsInsert'' smart constructor.
data MylibraryAnnotationsInsert' = MylibraryAnnotationsInsert'
    { _maiQuotaUser                 :: !(Maybe Text)
    , _maiPrettyPrint               :: !Bool
    , _maiCountry                   :: !(Maybe Text)
    , _maiUserIp                    :: !(Maybe Text)
    , _maiKey                       :: !(Maybe Text)
    , _maiShowOnlySummaryInResponse :: !(Maybe Bool)
    , _maiSource                    :: !(Maybe Text)
    , _maiOauthToken                :: !(Maybe Text)
    , _maiFields                    :: !(Maybe Text)
    , _maiAlt                       :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MylibraryAnnotationsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'maiQuotaUser'
--
-- * 'maiPrettyPrint'
--
-- * 'maiCountry'
--
-- * 'maiUserIp'
--
-- * 'maiKey'
--
-- * 'maiShowOnlySummaryInResponse'
--
-- * 'maiSource'
--
-- * 'maiOauthToken'
--
-- * 'maiFields'
--
-- * 'maiAlt'
mylibraryAnnotationsInsert'
    :: MylibraryAnnotationsInsert'
mylibraryAnnotationsInsert' =
    MylibraryAnnotationsInsert'
    { _maiQuotaUser = Nothing
    , _maiPrettyPrint = True
    , _maiCountry = Nothing
    , _maiUserIp = Nothing
    , _maiKey = Nothing
    , _maiShowOnlySummaryInResponse = Nothing
    , _maiSource = Nothing
    , _maiOauthToken = Nothing
    , _maiFields = Nothing
    , _maiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
maiQuotaUser :: Lens' MylibraryAnnotationsInsert' (Maybe Text)
maiQuotaUser
  = lens _maiQuotaUser (\ s a -> s{_maiQuotaUser = a})

-- | Returns response with indentations and line breaks.
maiPrettyPrint :: Lens' MylibraryAnnotationsInsert' Bool
maiPrettyPrint
  = lens _maiPrettyPrint
      (\ s a -> s{_maiPrettyPrint = a})

-- | ISO-3166-1 code to override the IP-based location.
maiCountry :: Lens' MylibraryAnnotationsInsert' (Maybe Text)
maiCountry
  = lens _maiCountry (\ s a -> s{_maiCountry = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
maiUserIp :: Lens' MylibraryAnnotationsInsert' (Maybe Text)
maiUserIp
  = lens _maiUserIp (\ s a -> s{_maiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
maiKey :: Lens' MylibraryAnnotationsInsert' (Maybe Text)
maiKey = lens _maiKey (\ s a -> s{_maiKey = a})

-- | Requests that only the summary of the specified layer be provided in the
-- response.
maiShowOnlySummaryInResponse :: Lens' MylibraryAnnotationsInsert' (Maybe Bool)
maiShowOnlySummaryInResponse
  = lens _maiShowOnlySummaryInResponse
      (\ s a -> s{_maiShowOnlySummaryInResponse = a})

-- | String to identify the originator of this request.
maiSource :: Lens' MylibraryAnnotationsInsert' (Maybe Text)
maiSource
  = lens _maiSource (\ s a -> s{_maiSource = a})

-- | OAuth 2.0 token for the current user.
maiOauthToken :: Lens' MylibraryAnnotationsInsert' (Maybe Text)
maiOauthToken
  = lens _maiOauthToken
      (\ s a -> s{_maiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
maiFields :: Lens' MylibraryAnnotationsInsert' (Maybe Text)
maiFields
  = lens _maiFields (\ s a -> s{_maiFields = a})

-- | Data format for the response.
maiAlt :: Lens' MylibraryAnnotationsInsert' Alt
maiAlt = lens _maiAlt (\ s a -> s{_maiAlt = a})

instance GoogleRequest MylibraryAnnotationsInsert'
         where
        type Rs MylibraryAnnotationsInsert' = Annotation
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MylibraryAnnotationsInsert'{..}
          = go _maiQuotaUser (Just _maiPrettyPrint) _maiCountry
              _maiUserIp
              _maiKey
              _maiShowOnlySummaryInResponse
              _maiSource
              _maiOauthToken
              _maiFields
              (Just _maiAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MylibraryAnnotationsInsertResource)
                      r
                      u
