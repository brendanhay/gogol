{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Sizes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one size by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSizesGet@.
module DFAReporting.Sizes.Get
    (
    -- * REST Resource
      SizesGetAPI

    -- * Creating a Request
    , sizesGet
    , SizesGet

    -- * Request Lenses
    , sggQuotaUser
    , sggPrettyPrint
    , sggUserIp
    , sggProfileId
    , sggKey
    , sggId
    , sggOauthToken
    , sggFields
    , sggAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSizesGet@ which the
-- 'SizesGet' request conforms to.
type SizesGetAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sizes" :> Capture "id" Int64 :> Get '[JSON] Size

-- | Gets one size by ID.
--
-- /See:/ 'sizesGet' smart constructor.
data SizesGet = SizesGet
    { _sggQuotaUser   :: !(Maybe Text)
    , _sggPrettyPrint :: !Bool
    , _sggUserIp      :: !(Maybe Text)
    , _sggProfileId   :: !Int64
    , _sggKey         :: !(Maybe Text)
    , _sggId          :: !Int64
    , _sggOauthToken  :: !(Maybe Text)
    , _sggFields      :: !(Maybe Text)
    , _sggAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sggQuotaUser'
--
-- * 'sggPrettyPrint'
--
-- * 'sggUserIp'
--
-- * 'sggProfileId'
--
-- * 'sggKey'
--
-- * 'sggId'
--
-- * 'sggOauthToken'
--
-- * 'sggFields'
--
-- * 'sggAlt'
sizesGet
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> SizesGet
sizesGet pSggProfileId_ pSggId_ =
    SizesGet
    { _sggQuotaUser = Nothing
    , _sggPrettyPrint = True
    , _sggUserIp = Nothing
    , _sggProfileId = pSggProfileId_
    , _sggKey = Nothing
    , _sggId = pSggId_
    , _sggOauthToken = Nothing
    , _sggFields = Nothing
    , _sggAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sggQuotaUser :: Lens' SizesGet' (Maybe Text)
sggQuotaUser
  = lens _sggQuotaUser (\ s a -> s{_sggQuotaUser = a})

-- | Returns response with indentations and line breaks.
sggPrettyPrint :: Lens' SizesGet' Bool
sggPrettyPrint
  = lens _sggPrettyPrint
      (\ s a -> s{_sggPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sggUserIp :: Lens' SizesGet' (Maybe Text)
sggUserIp
  = lens _sggUserIp (\ s a -> s{_sggUserIp = a})

-- | User profile ID associated with this request.
sggProfileId :: Lens' SizesGet' Int64
sggProfileId
  = lens _sggProfileId (\ s a -> s{_sggProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sggKey :: Lens' SizesGet' (Maybe Text)
sggKey = lens _sggKey (\ s a -> s{_sggKey = a})

-- | Size ID.
sggId :: Lens' SizesGet' Int64
sggId = lens _sggId (\ s a -> s{_sggId = a})

-- | OAuth 2.0 token for the current user.
sggOauthToken :: Lens' SizesGet' (Maybe Text)
sggOauthToken
  = lens _sggOauthToken
      (\ s a -> s{_sggOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sggFields :: Lens' SizesGet' (Maybe Text)
sggFields
  = lens _sggFields (\ s a -> s{_sggFields = a})

-- | Data format for the response.
sggAlt :: Lens' SizesGet' Text
sggAlt = lens _sggAlt (\ s a -> s{_sggAlt = a})

instance GoogleRequest SizesGet' where
        type Rs SizesGet' = Size
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SizesGet{..}
          = go _sggQuotaUser _sggPrettyPrint _sggUserIp
              _sggProfileId
              _sggKey
              _sggId
              _sggOauthToken
              _sggFields
              _sggAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SizesGetAPI) r u
