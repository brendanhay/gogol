{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Genomics.Variantsets.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the contents of a variant set. The variant set object is not
-- deleted.
--
-- /See:/ <https://developers.google.com/genomics/v1beta2/reference Genomics API Reference> for @GenomicsVariantsetsDelete@.
module Genomics.Variantsets.Delete
    (
    -- * REST Resource
      VariantsetsDeleteAPI

    -- * Creating a Request
    , variantsetsDelete
    , VariantsetsDelete

    -- * Request Lenses
    , vddQuotaUser
    , vddPrettyPrint
    , vddVariantSetId
    , vddUserIp
    , vddKey
    , vddOauthToken
    , vddFields
    , vddAlt
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsDelete@ which the
-- 'VariantsetsDelete' request conforms to.
type VariantsetsDeleteAPI =
     "variantsets" :>
       Capture "variantSetId" Text :> Delete '[JSON] ()

-- | Deletes the contents of a variant set. The variant set object is not
-- deleted.
--
-- /See:/ 'variantsetsDelete' smart constructor.
data VariantsetsDelete = VariantsetsDelete
    { _vddQuotaUser    :: !(Maybe Text)
    , _vddPrettyPrint  :: !Bool
    , _vddVariantSetId :: !Text
    , _vddUserIp       :: !(Maybe Text)
    , _vddKey          :: !(Maybe Text)
    , _vddOauthToken   :: !(Maybe Text)
    , _vddFields       :: !(Maybe Text)
    , _vddAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'VariantsetsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vddQuotaUser'
--
-- * 'vddPrettyPrint'
--
-- * 'vddVariantSetId'
--
-- * 'vddUserIp'
--
-- * 'vddKey'
--
-- * 'vddOauthToken'
--
-- * 'vddFields'
--
-- * 'vddAlt'
variantsetsDelete
    :: Text -- ^ 'variantSetId'
    -> VariantsetsDelete
variantsetsDelete pVddVariantSetId_ =
    VariantsetsDelete
    { _vddQuotaUser = Nothing
    , _vddPrettyPrint = True
    , _vddVariantSetId = pVddVariantSetId_
    , _vddUserIp = Nothing
    , _vddKey = Nothing
    , _vddOauthToken = Nothing
    , _vddFields = Nothing
    , _vddAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
vddQuotaUser :: Lens' VariantsetsDelete' (Maybe Text)
vddQuotaUser
  = lens _vddQuotaUser (\ s a -> s{_vddQuotaUser = a})

-- | Returns response with indentations and line breaks.
vddPrettyPrint :: Lens' VariantsetsDelete' Bool
vddPrettyPrint
  = lens _vddPrettyPrint
      (\ s a -> s{_vddPrettyPrint = a})

-- | The ID of the variant set to be deleted.
vddVariantSetId :: Lens' VariantsetsDelete' Text
vddVariantSetId
  = lens _vddVariantSetId
      (\ s a -> s{_vddVariantSetId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
vddUserIp :: Lens' VariantsetsDelete' (Maybe Text)
vddUserIp
  = lens _vddUserIp (\ s a -> s{_vddUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vddKey :: Lens' VariantsetsDelete' (Maybe Text)
vddKey = lens _vddKey (\ s a -> s{_vddKey = a})

-- | OAuth 2.0 token for the current user.
vddOauthToken :: Lens' VariantsetsDelete' (Maybe Text)
vddOauthToken
  = lens _vddOauthToken
      (\ s a -> s{_vddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
vddFields :: Lens' VariantsetsDelete' (Maybe Text)
vddFields
  = lens _vddFields (\ s a -> s{_vddFields = a})

-- | Data format for the response.
vddAlt :: Lens' VariantsetsDelete' Text
vddAlt = lens _vddAlt (\ s a -> s{_vddAlt = a})

instance GoogleRequest VariantsetsDelete' where
        type Rs VariantsetsDelete' = ()
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsDelete{..}
          = go _vddQuotaUser _vddPrettyPrint _vddVariantSetId
              _vddUserIp
              _vddKey
              _vddOauthToken
              _vddFields
              _vddAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsDeleteAPI)
                      r
                      u
