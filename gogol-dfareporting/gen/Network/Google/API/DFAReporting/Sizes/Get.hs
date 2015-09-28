{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.DFAReporting.Sizes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one size by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.sizes.get@.
module Network.Google.API.DFAReporting.Sizes.Get
    (
    -- * REST Resource
      SizesGetAPI

    -- * Creating a Request
    , sizesGet'
    , SizesGet'

    -- * Request Lenses
    , sgQuotaUser
    , sgPrettyPrint
    , sgUserIp
    , sgProfileId
    , sgKey
    , sgId
    , sgOauthToken
    , sgFields
    , sgAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for dfareporting.sizes.get which the
-- 'SizesGet'' request conforms to.
type SizesGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sizes" :>
           Capture "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Size

-- | Gets one size by ID.
--
-- /See:/ 'sizesGet'' smart constructor.
data SizesGet' = SizesGet'
    { _sgQuotaUser   :: !(Maybe Text)
    , _sgPrettyPrint :: !Bool
    , _sgUserIp      :: !(Maybe Text)
    , _sgProfileId   :: !Int64
    , _sgKey         :: !(Maybe Text)
    , _sgId          :: !Int64
    , _sgOauthToken  :: !(Maybe Text)
    , _sgFields      :: !(Maybe Text)
    , _sgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgQuotaUser'
--
-- * 'sgPrettyPrint'
--
-- * 'sgUserIp'
--
-- * 'sgProfileId'
--
-- * 'sgKey'
--
-- * 'sgId'
--
-- * 'sgOauthToken'
--
-- * 'sgFields'
--
-- * 'sgAlt'
sizesGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> SizesGet'
sizesGet' pSgProfileId_ pSgId_ =
    SizesGet'
    { _sgQuotaUser = Nothing
    , _sgPrettyPrint = True
    , _sgUserIp = Nothing
    , _sgProfileId = pSgProfileId_
    , _sgKey = Nothing
    , _sgId = pSgId_
    , _sgOauthToken = Nothing
    , _sgFields = Nothing
    , _sgAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sgQuotaUser :: Lens' SizesGet' (Maybe Text)
sgQuotaUser
  = lens _sgQuotaUser (\ s a -> s{_sgQuotaUser = a})

-- | Returns response with indentations and line breaks.
sgPrettyPrint :: Lens' SizesGet' Bool
sgPrettyPrint
  = lens _sgPrettyPrint
      (\ s a -> s{_sgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sgUserIp :: Lens' SizesGet' (Maybe Text)
sgUserIp = lens _sgUserIp (\ s a -> s{_sgUserIp = a})

-- | User profile ID associated with this request.
sgProfileId :: Lens' SizesGet' Int64
sgProfileId
  = lens _sgProfileId (\ s a -> s{_sgProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sgKey :: Lens' SizesGet' (Maybe Text)
sgKey = lens _sgKey (\ s a -> s{_sgKey = a})

-- | Size ID.
sgId :: Lens' SizesGet' Int64
sgId = lens _sgId (\ s a -> s{_sgId = a})

-- | OAuth 2.0 token for the current user.
sgOauthToken :: Lens' SizesGet' (Maybe Text)
sgOauthToken
  = lens _sgOauthToken (\ s a -> s{_sgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sgFields :: Lens' SizesGet' (Maybe Text)
sgFields = lens _sgFields (\ s a -> s{_sgFields = a})

-- | Data format for the response.
sgAlt :: Lens' SizesGet' Alt
sgAlt = lens _sgAlt (\ s a -> s{_sgAlt = a})

instance GoogleRequest SizesGet' where
        type Rs SizesGet' = Size
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SizesGet'{..}
          = go _sgQuotaUser (Just _sgPrettyPrint) _sgUserIp
              _sgProfileId
              _sgKey
              _sgId
              _sgOauthToken
              _sgFields
              (Just _sgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy SizesGetAPI) r u
