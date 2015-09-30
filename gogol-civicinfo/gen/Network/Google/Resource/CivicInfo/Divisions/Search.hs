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
-- Module      : Network.Google.Resource.CivicInfo.Divisions.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Searches for political divisions by their natural name or OCD ID.
--
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference> for @CivicinfoDivisionsSearch@.
module Network.Google.Resource.CivicInfo.Divisions.Search
    (
    -- * REST Resource
      DivisionsSearchResource

    -- * Creating a Request
    , divisionsSearch'
    , DivisionsSearch'

    -- * Request Lenses
    , dsQuotaUser
    , dsPrettyPrint
    , dsUserIp
    , dsKey
    , dsQuery
    , dsOauthToken
    , dsFields
    , dsAlt
    ) where

import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude

-- | A resource alias for @CivicinfoDivisionsSearch@ which the
-- 'DivisionsSearch'' request conforms to.
type DivisionsSearchResource =
     "divisions" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "query" Text :>
                 QueryParam "oauth_token" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "alt" Alt :>
                       Get '[JSON] DivisionSearchResponse

-- | Searches for political divisions by their natural name or OCD ID.
--
-- /See:/ 'divisionsSearch'' smart constructor.
data DivisionsSearch' = DivisionsSearch'
    { _dsQuotaUser   :: !(Maybe Text)
    , _dsPrettyPrint :: !Bool
    , _dsUserIp      :: !(Maybe Text)
    , _dsKey         :: !(Maybe Text)
    , _dsQuery       :: !(Maybe Text)
    , _dsOauthToken  :: !(Maybe Text)
    , _dsFields      :: !(Maybe Text)
    , _dsAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DivisionsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsQuotaUser'
--
-- * 'dsPrettyPrint'
--
-- * 'dsUserIp'
--
-- * 'dsKey'
--
-- * 'dsQuery'
--
-- * 'dsOauthToken'
--
-- * 'dsFields'
--
-- * 'dsAlt'
divisionsSearch'
    :: DivisionsSearch'
divisionsSearch' =
    DivisionsSearch'
    { _dsQuotaUser = Nothing
    , _dsPrettyPrint = True
    , _dsUserIp = Nothing
    , _dsKey = Nothing
    , _dsQuery = Nothing
    , _dsOauthToken = Nothing
    , _dsFields = Nothing
    , _dsAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dsQuotaUser :: Lens' DivisionsSearch' (Maybe Text)
dsQuotaUser
  = lens _dsQuotaUser (\ s a -> s{_dsQuotaUser = a})

-- | Returns response with indentations and line breaks.
dsPrettyPrint :: Lens' DivisionsSearch' Bool
dsPrettyPrint
  = lens _dsPrettyPrint
      (\ s a -> s{_dsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dsUserIp :: Lens' DivisionsSearch' (Maybe Text)
dsUserIp = lens _dsUserIp (\ s a -> s{_dsUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dsKey :: Lens' DivisionsSearch' (Maybe Text)
dsKey = lens _dsKey (\ s a -> s{_dsKey = a})

-- | The search query. Queries can cover any parts of a OCD ID or a human
-- readable division name. All words given in the query are treated as
-- required patterns. In addition to that, most query operators of the
-- Apache Lucene library are supported. See
-- http:\/\/lucene.apache.org\/core\/2_9_4\/queryparsersyntax.html
dsQuery :: Lens' DivisionsSearch' (Maybe Text)
dsQuery = lens _dsQuery (\ s a -> s{_dsQuery = a})

-- | OAuth 2.0 token for the current user.
dsOauthToken :: Lens' DivisionsSearch' (Maybe Text)
dsOauthToken
  = lens _dsOauthToken (\ s a -> s{_dsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dsFields :: Lens' DivisionsSearch' (Maybe Text)
dsFields = lens _dsFields (\ s a -> s{_dsFields = a})

-- | Data format for the response.
dsAlt :: Lens' DivisionsSearch' Alt
dsAlt = lens _dsAlt (\ s a -> s{_dsAlt = a})

instance GoogleRequest DivisionsSearch' where
        type Rs DivisionsSearch' = DivisionSearchResponse
        request = requestWithRoute defReq civicInfoURL
        requestWithRoute r u DivisionsSearch'{..}
          = go _dsQuotaUser (Just _dsPrettyPrint) _dsUserIp
              _dsKey
              _dsQuery
              _dsOauthToken
              _dsFields
              (Just _dsAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DivisionsSearchResource)
                      r
                      u
