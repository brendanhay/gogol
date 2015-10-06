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
-- Module      : Network.Google.Resource.CivicInfo.Divisions.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Searches for political divisions by their natural name or OCD ID.
--
-- /See:/ <https://developers.google.com/civic-information Google Civic Information API Reference> for @CivicInfoDivisionsSearch@.
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
    , dsUserIP
    , dsKey
    , dsQuery
    , dsOAuthToken
    , dsFields
    ) where

import           Network.Google.CivicInfo.Types
import           Network.Google.Prelude

-- | A resource alias for @CivicInfoDivisionsSearch@ which the
-- 'DivisionsSearch'' request conforms to.
type DivisionsSearchResource =
     "divisions" :>
       QueryParam "query" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" AuthKey :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] DivisionSearchResponse

-- | Searches for political divisions by their natural name or OCD ID.
--
-- /See:/ 'divisionsSearch'' smart constructor.
data DivisionsSearch' = DivisionsSearch'
    { _dsQuotaUser   :: !(Maybe Text)
    , _dsPrettyPrint :: !Bool
    , _dsUserIP      :: !(Maybe Text)
    , _dsKey         :: !(Maybe AuthKey)
    , _dsQuery       :: !(Maybe Text)
    , _dsOAuthToken  :: !(Maybe OAuthToken)
    , _dsFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DivisionsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsQuotaUser'
--
-- * 'dsPrettyPrint'
--
-- * 'dsUserIP'
--
-- * 'dsKey'
--
-- * 'dsQuery'
--
-- * 'dsOAuthToken'
--
-- * 'dsFields'
divisionsSearch'
    :: DivisionsSearch'
divisionsSearch' =
    DivisionsSearch'
    { _dsQuotaUser = Nothing
    , _dsPrettyPrint = True
    , _dsUserIP = Nothing
    , _dsKey = Nothing
    , _dsQuery = Nothing
    , _dsOAuthToken = Nothing
    , _dsFields = Nothing
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
dsUserIP :: Lens' DivisionsSearch' (Maybe Text)
dsUserIP = lens _dsUserIP (\ s a -> s{_dsUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dsKey :: Lens' DivisionsSearch' (Maybe AuthKey)
dsKey = lens _dsKey (\ s a -> s{_dsKey = a})

-- | The search query. Queries can cover any parts of a OCD ID or a human
-- readable division name. All words given in the query are treated as
-- required patterns. In addition to that, most query operators of the
-- Apache Lucene library are supported. See
-- http:\/\/lucene.apache.org\/core\/2_9_4\/queryparsersyntax.html
dsQuery :: Lens' DivisionsSearch' (Maybe Text)
dsQuery = lens _dsQuery (\ s a -> s{_dsQuery = a})

-- | OAuth 2.0 token for the current user.
dsOAuthToken :: Lens' DivisionsSearch' (Maybe OAuthToken)
dsOAuthToken
  = lens _dsOAuthToken (\ s a -> s{_dsOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dsFields :: Lens' DivisionsSearch' (Maybe Text)
dsFields = lens _dsFields (\ s a -> s{_dsFields = a})

instance GoogleAuth DivisionsSearch' where
        _AuthKey = dsKey . _Just
        _AuthToken = dsOAuthToken . _Just

instance GoogleRequest DivisionsSearch' where
        type Rs DivisionsSearch' = DivisionSearchResponse
        request = requestWith civicInfoRequest
        requestWith rq DivisionsSearch'{..}
          = go _dsQuery _dsQuotaUser (Just _dsPrettyPrint)
              _dsUserIP
              _dsFields
              _dsKey
              _dsOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy DivisionsSearchResource)
                      rq
