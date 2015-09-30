{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Variantsets.Create
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
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsetsCreate@.
module Genomics.Variantsets.Create
    (
    -- * REST Resource
      VariantsetsCreateAPI

    -- * Creating a Request
    , variantsetsCreate
    , VariantsetsCreate

    -- * Request Lenses
    , vQuotaUser
    , vPrettyPrint
    , vUserIp
    , vKey
    , vOauthToken
    , vFields
    , vAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsCreate@ which the
-- 'VariantsetsCreate' request conforms to.
type VariantsetsCreateAPI =
     "variantsets" :> Post '[JSON] VariantSet

-- | Creates a new variant set (only necessary in v1). The provided variant
-- set must have a valid datasetId set - all other fields are optional.
-- Note that the id field will be ignored, as this is assigned by the
-- server.
--
-- /See:/ 'variantsetsCreate' smart constructor.
data VariantsetsCreate = VariantsetsCreate
    { _vQuotaUser   :: !(Maybe Text)
    , _vPrettyPrint :: !Bool
    , _vUserIp      :: !(Maybe Text)
    , _vKey         :: !(Maybe Text)
    , _vOauthToken  :: !(Maybe Text)
    , _vFields      :: !(Maybe Text)
    , _vAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vQuotaUser'
--
-- * 'vPrettyPrint'
--
-- * 'vUserIp'
--
-- * 'vKey'
--
-- * 'vOauthToken'
--
-- * 'vFields'
--
-- * 'vAlt'
variantsetsCreate
    :: VariantsetsCreate
variantsetsCreate =
    VariantsetsCreate
    { _vQuotaUser = Nothing
    , _vPrettyPrint = True
    , _vUserIp = Nothing
    , _vKey = Nothing
    , _vOauthToken = Nothing
    , _vFields = Nothing
    , _vAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vQuotaUser :: Lens' VariantsetsCreate' (Maybe Text)
vQuotaUser
  = lens _vQuotaUser (\ s a -> s{_vQuotaUser = a})

-- | Returns response with indentations and line breaks.
vPrettyPrint :: Lens' VariantsetsCreate' Bool
vPrettyPrint
  = lens _vPrettyPrint (\ s a -> s{_vPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vUserIp :: Lens' VariantsetsCreate' (Maybe Text)
vUserIp = lens _vUserIp (\ s a -> s{_vUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vKey :: Lens' VariantsetsCreate' (Maybe Text)
vKey = lens _vKey (\ s a -> s{_vKey = a})

-- | OAuth 2.0 token for the current user.
vOauthToken :: Lens' VariantsetsCreate' (Maybe Text)
vOauthToken
  = lens _vOauthToken (\ s a -> s{_vOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vFields :: Lens' VariantsetsCreate' (Maybe Text)
vFields = lens _vFields (\ s a -> s{_vFields = a})

-- | Data format for the response.
vAlt :: Lens' VariantsetsCreate' Text
vAlt = lens _vAlt (\ s a -> s{_vAlt = a})

instance GoogleRequest VariantsetsCreate' where
        type Rs VariantsetsCreate' = VariantSet
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsCreate{..}
          = go _vQuotaUser _vPrettyPrint _vUserIp _vKey
              _vOauthToken
              _vFields
              _vAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsCreateAPI)
                      r
                      u
