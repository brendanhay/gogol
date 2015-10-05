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
module Network.Google.Resource.Genomics.Variantsets.Delete
    (
    -- * REST Resource
      VariantsetsDeleteResource

    -- * Creating a Request
    , variantsetsDelete'
    , VariantsetsDelete'

    -- * Request Lenses
    , vddQuotaUser
    , vddPrettyPrint
    , vddVariantSetId
    , vddUserIP
    , vddKey
    , vddOAuthToken
    , vddFields
    ) where

import           Network.Google.Genomics.Types
import           Network.Google.Prelude

-- | A resource alias for @GenomicsVariantsetsDelete@ which the
-- 'VariantsetsDelete'' request conforms to.
type VariantsetsDeleteResource =
     "variantsets" :>
       Capture "variantSetId" Text :>
         QueryParam "quotaUser" Text :>
           QueryParam "prettyPrint" Bool :>
             QueryParam "userIp" Text :>
               QueryParam "fields" Text :>
                 QueryParam "key" Key :>
                   QueryParam "oauth_token" OAuthToken :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the contents of a variant set. The variant set object is not
-- deleted.
--
-- /See:/ 'variantsetsDelete'' smart constructor.
data VariantsetsDelete' = VariantsetsDelete'
    { _vddQuotaUser    :: !(Maybe Text)
    , _vddPrettyPrint  :: !Bool
    , _vddVariantSetId :: !Text
    , _vddUserIP       :: !(Maybe Text)
    , _vddKey          :: !(Maybe Key)
    , _vddOAuthToken   :: !(Maybe OAuthToken)
    , _vddFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'vddUserIP'
--
-- * 'vddKey'
--
-- * 'vddOAuthToken'
--
-- * 'vddFields'
variantsetsDelete'
    :: Text -- ^ 'variantSetId'
    -> VariantsetsDelete'
variantsetsDelete' pVddVariantSetId_ =
    VariantsetsDelete'
    { _vddQuotaUser = Nothing
    , _vddPrettyPrint = True
    , _vddVariantSetId = pVddVariantSetId_
    , _vddUserIP = Nothing
    , _vddKey = Nothing
    , _vddOAuthToken = Nothing
    , _vddFields = Nothing
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
vddUserIP :: Lens' VariantsetsDelete' (Maybe Text)
vddUserIP
  = lens _vddUserIP (\ s a -> s{_vddUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
vddKey :: Lens' VariantsetsDelete' (Maybe Key)
vddKey = lens _vddKey (\ s a -> s{_vddKey = a})

-- | OAuth 2.0 token for the current user.
vddOAuthToken :: Lens' VariantsetsDelete' (Maybe OAuthToken)
vddOAuthToken
  = lens _vddOAuthToken
      (\ s a -> s{_vddOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
vddFields :: Lens' VariantsetsDelete' (Maybe Text)
vddFields
  = lens _vddFields (\ s a -> s{_vddFields = a})

instance GoogleAuth VariantsetsDelete' where
        authKey = vddKey . _Just
        authToken = vddOAuthToken . _Just

instance GoogleRequest VariantsetsDelete' where
        type Rs VariantsetsDelete' = ()
        request = requestWithRoute defReq genomicsURL
        requestWithRoute r u VariantsetsDelete'{..}
          = go _vddVariantSetId _vddQuotaUser
              (Just _vddPrettyPrint)
              _vddUserIP
              _vddFields
              _vddKey
              _vddOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy VariantsetsDeleteResource)
                      r
                      u
