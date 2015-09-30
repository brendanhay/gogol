{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.QPXExpress.Trips.Search
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a list of flights.
--
-- /See:/ <http://developers.google.com/qpx-express QPX Express API Reference> for @QpxExpressTripsSearch@.
module QPXExpress.Trips.Search
    (
    -- * REST Resource
      TripsSearchAPI

    -- * Creating a Request
    , tripsSearch
    , TripsSearch

    -- * Request Lenses
    , tsQuotaUser
    , tsPrettyPrint
    , tsUserIp
    , tsKey
    , tsOauthToken
    , tsFields
    , tsAlt
    ) where

import           Network.Google.Prelude
import           Network.Google.QPXExpress.Types

-- | A resource alias for @QpxExpressTripsSearch@ which the
-- 'TripsSearch' request conforms to.
type TripsSearchAPI =
     "search" :> Post '[JSON] TripsSearchResponse

-- | Returns a list of flights.
--
-- /See:/ 'tripsSearch' smart constructor.
data TripsSearch = TripsSearch
    { _tsQuotaUser   :: !(Maybe Text)
    , _tsPrettyPrint :: !Bool
    , _tsUserIp      :: !(Maybe Text)
    , _tsKey         :: !(Maybe Text)
    , _tsOauthToken  :: !(Maybe Text)
    , _tsFields      :: !(Maybe Text)
    , _tsAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TripsSearch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tsQuotaUser'
--
-- * 'tsPrettyPrint'
--
-- * 'tsUserIp'
--
-- * 'tsKey'
--
-- * 'tsOauthToken'
--
-- * 'tsFields'
--
-- * 'tsAlt'
tripsSearch
    :: TripsSearch
tripsSearch =
    TripsSearch
    { _tsQuotaUser = Nothing
    , _tsPrettyPrint = True
    , _tsUserIp = Nothing
    , _tsKey = Nothing
    , _tsOauthToken = Nothing
    , _tsFields = Nothing
    , _tsAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tsQuotaUser :: Lens' TripsSearch' (Maybe Text)
tsQuotaUser
  = lens _tsQuotaUser (\ s a -> s{_tsQuotaUser = a})

-- | Returns response with indentations and line breaks.
tsPrettyPrint :: Lens' TripsSearch' Bool
tsPrettyPrint
  = lens _tsPrettyPrint
      (\ s a -> s{_tsPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tsUserIp :: Lens' TripsSearch' (Maybe Text)
tsUserIp = lens _tsUserIp (\ s a -> s{_tsUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tsKey :: Lens' TripsSearch' (Maybe Text)
tsKey = lens _tsKey (\ s a -> s{_tsKey = a})

-- | OAuth 2.0 token for the current user.
tsOauthToken :: Lens' TripsSearch' (Maybe Text)
tsOauthToken
  = lens _tsOauthToken (\ s a -> s{_tsOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tsFields :: Lens' TripsSearch' (Maybe Text)
tsFields = lens _tsFields (\ s a -> s{_tsFields = a})

-- | Data format for the response.
tsAlt :: Lens' TripsSearch' Text
tsAlt = lens _tsAlt (\ s a -> s{_tsAlt = a})

instance GoogleRequest TripsSearch' where
        type Rs TripsSearch' = TripsSearchResponse
        request = requestWithRoute defReq qPXExpressURL
        requestWithRoute r u TripsSearch{..}
          = go _tsQuotaUser _tsPrettyPrint _tsUserIp _tsKey
              _tsOauthToken
              _tsFields
              _tsAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TripsSearchAPI) r u
