{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Genomics.Variantsets.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new variant set (only necessary in v1). The provided variant
-- set must have a valid datasetId set - all other fields are optional.
-- Note that the id field will be ignored, as this is assigned by the
-- server.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @genomics.variantsets.create@.
module Network.Google.API.Genomics.Variantsets.Create
    (
    -- * REST Resource
      VariantsetsCreateAPI

    -- * Creating a Request
    , variantsetsCreate'
    , VariantsetsCreate'

    -- * Request Lenses
    , vccQuotaUser
    , vccPrettyPrint
    , vccUserIp
    , vccKey
    , vccOauthToken
    , vccFields
    , vccAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for genomics.variantsets.create which the
-- 'VariantsetsCreate'' request conforms to.
type VariantsetsCreateAPI =
     "variantsets" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Text :>
               QueryParam "oauth_token" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" Alt :> Post '[JSON] VariantSet

-- | Creates a new variant set (only necessary in v1). The provided variant
-- set must have a valid datasetId set - all other fields are optional.
-- Note that the id field will be ignored, as this is assigned by the
-- server.
--
-- /See:/ 'variantsetsCreate'' smart constructor.
data VariantsetsCreate' = VariantsetsCreate'
    { _vccQuotaUser   :: !(Maybe Text)
    , _vccPrettyPrint :: !Bool
    , _vccUserIp      :: !(Maybe Text)
    , _vccKey         :: !(Maybe Text)
    , _vccOauthToken  :: !(Maybe Text)
    , _vccFields      :: !(Maybe Text)
    , _vccAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vccQuotaUser'
--
-- * 'vccPrettyPrint'
--
-- * 'vccUserIp'
--
-- * 'vccKey'
--
-- * 'vccOauthToken'
--
-- * 'vccFields'
--
-- * 'vccAlt'
variantsetsCreate'
    :: VariantsetsCreate'
variantsetsCreate' =
    VariantsetsCreate'
    { _vccQuotaUser = Nothing
    , _vccPrettyPrint = True
    , _vccUserIp = Nothing
    , _vccKey = Nothing
    , _vccOauthToken = Nothing
    , _vccFields = Nothing
    , _vccAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vccQuotaUser :: Lens' VariantsetsCreate' (Maybe Text)
vccQuotaUser
  = lens _vccQuotaUser (\ s a -> s{_vccQuotaUser = a})

-- | Returns response with indentations and line breaks.
vccPrettyPrint :: Lens' VariantsetsCreate' Bool
vccPrettyPrint
  = lens _vccPrettyPrint
      (\ s a -> s{_vccPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vccUserIp :: Lens' VariantsetsCreate' (Maybe Text)
vccUserIp
  = lens _vccUserIp (\ s a -> s{_vccUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vccKey :: Lens' VariantsetsCreate' (Maybe Text)
vccKey = lens _vccKey (\ s a -> s{_vccKey = a})

-- | OAuth 2.0 token for the current user.
vccOauthToken :: Lens' VariantsetsCreate' (Maybe Text)
vccOauthToken
  = lens _vccOauthToken
      (\ s a -> s{_vccOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vccFields :: Lens' VariantsetsCreate' (Maybe Text)
vccFields
  = lens _vccFields (\ s a -> s{_vccFields = a})

-- | Data format for the response.
vccAlt :: Lens' VariantsetsCreate' Alt
vccAlt = lens _vccAlt (\ s a -> s{_vccAlt = a})

instance GoogleRequest VariantsetsCreate' where
        type Rs VariantsetsCreate' = VariantSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsCreate'{..}
          = go _vccQuotaUser (Just _vccPrettyPrint) _vccUserIp
              _vccKey
              _vccOauthToken
              _vccFields
              (Just _vccAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsCreateAPI)
                      r
                      u
