{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Template.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing template. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTemplatePatch@.
module FusionTables.Template.Patch
    (
    -- * REST Resource
      TemplatePatchAPI

    -- * Creating a Request
    , templatePatch
    , TemplatePatch

    -- * Request Lenses
    , tpQuotaUser
    , tpPrettyPrint
    , tpTemplateId
    , tpUserIp
    , tpKey
    , tpOauthToken
    , tpTableId
    , tpFields
    , tpAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTemplatePatch@ which the
-- 'TemplatePatch' request conforms to.
type TemplatePatchAPI =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           Capture "templateId" Int32 :> Patch '[JSON] Template

-- | Updates an existing template. This method supports patch semantics.
--
-- /See:/ 'templatePatch' smart constructor.
data TemplatePatch = TemplatePatch
    { _tpQuotaUser   :: !(Maybe Text)
    , _tpPrettyPrint :: !Bool
    , _tpTemplateId  :: !Int32
    , _tpUserIp      :: !(Maybe Text)
    , _tpKey         :: !(Maybe Text)
    , _tpOauthToken  :: !(Maybe Text)
    , _tpTableId     :: !Text
    , _tpFields      :: !(Maybe Text)
    , _tpAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplatePatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpQuotaUser'
--
-- * 'tpPrettyPrint'
--
-- * 'tpTemplateId'
--
-- * 'tpUserIp'
--
-- * 'tpKey'
--
-- * 'tpOauthToken'
--
-- * 'tpTableId'
--
-- * 'tpFields'
--
-- * 'tpAlt'
templatePatch
    :: Int32 -- ^ 'templateId'
    -> Text -- ^ 'tableId'
    -> TemplatePatch
templatePatch pTpTemplateId_ pTpTableId_ =
    TemplatePatch
    { _tpQuotaUser = Nothing
    , _tpPrettyPrint = True
    , _tpTemplateId = pTpTemplateId_
    , _tpUserIp = Nothing
    , _tpKey = Nothing
    , _tpOauthToken = Nothing
    , _tpTableId = pTpTableId_
    , _tpFields = Nothing
    , _tpAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpQuotaUser :: Lens' TemplatePatch' (Maybe Text)
tpQuotaUser
  = lens _tpQuotaUser (\ s a -> s{_tpQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpPrettyPrint :: Lens' TemplatePatch' Bool
tpPrettyPrint
  = lens _tpPrettyPrint
      (\ s a -> s{_tpPrettyPrint = a})

-- | Identifier for the template that is being updated
tpTemplateId :: Lens' TemplatePatch' Int32
tpTemplateId
  = lens _tpTemplateId (\ s a -> s{_tpTemplateId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpUserIp :: Lens' TemplatePatch' (Maybe Text)
tpUserIp = lens _tpUserIp (\ s a -> s{_tpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpKey :: Lens' TemplatePatch' (Maybe Text)
tpKey = lens _tpKey (\ s a -> s{_tpKey = a})

-- | OAuth 2.0 token for the current user.
tpOauthToken :: Lens' TemplatePatch' (Maybe Text)
tpOauthToken
  = lens _tpOauthToken (\ s a -> s{_tpOauthToken = a})

-- | Table to which the updated template belongs
tpTableId :: Lens' TemplatePatch' Text
tpTableId
  = lens _tpTableId (\ s a -> s{_tpTableId = a})

-- | Selector specifying which fields to include in a partial response.
tpFields :: Lens' TemplatePatch' (Maybe Text)
tpFields = lens _tpFields (\ s a -> s{_tpFields = a})

-- | Data format for the response.
tpAlt :: Lens' TemplatePatch' Text
tpAlt = lens _tpAlt (\ s a -> s{_tpAlt = a})

instance GoogleRequest TemplatePatch' where
        type Rs TemplatePatch' = Template
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TemplatePatch{..}
          = go _tpQuotaUser _tpPrettyPrint _tpTemplateId
              _tpUserIp
              _tpKey
              _tpOauthToken
              _tpTableId
              _tpFields
              _tpAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TemplatePatchAPI) r
                      u
