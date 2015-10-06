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
module Network.Google.Resource.FusionTables.Template.Patch
    (
    -- * REST Resource
      TemplatePatchResource

    -- * Creating a Request
    , templatePatch'
    , TemplatePatch'

    -- * Request Lenses
    , tpQuotaUser
    , tpPrettyPrint
    , tpTemplateId
    , tpUserIP
    , tpPayload
    , tpKey
    , tpOAuthToken
    , tpTableId
    , tpFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTemplatePatch@ which the
-- 'TemplatePatch'' request conforms to.
type TemplatePatchResource =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           Capture "templateId" Int32 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Template :> Patch '[JSON] Template

-- | Updates an existing template. This method supports patch semantics.
--
-- /See:/ 'templatePatch'' smart constructor.
data TemplatePatch' = TemplatePatch'
    { _tpQuotaUser   :: !(Maybe Text)
    , _tpPrettyPrint :: !Bool
    , _tpTemplateId  :: !Int32
    , _tpUserIP      :: !(Maybe Text)
    , _tpPayload     :: !Template
    , _tpKey         :: !(Maybe AuthKey)
    , _tpOAuthToken  :: !(Maybe OAuthToken)
    , _tpTableId     :: !Text
    , _tpFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'tpUserIP'
--
-- * 'tpPayload'
--
-- * 'tpKey'
--
-- * 'tpOAuthToken'
--
-- * 'tpTableId'
--
-- * 'tpFields'
templatePatch'
    :: Int32 -- ^ 'templateId'
    -> Template -- ^ 'payload'
    -> Text -- ^ 'tableId'
    -> TemplatePatch'
templatePatch' pTpTemplateId_ pTpPayload_ pTpTableId_ =
    TemplatePatch'
    { _tpQuotaUser = Nothing
    , _tpPrettyPrint = True
    , _tpTemplateId = pTpTemplateId_
    , _tpUserIP = Nothing
    , _tpPayload = pTpPayload_
    , _tpKey = Nothing
    , _tpOAuthToken = Nothing
    , _tpTableId = pTpTableId_
    , _tpFields = Nothing
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
tpUserIP :: Lens' TemplatePatch' (Maybe Text)
tpUserIP = lens _tpUserIP (\ s a -> s{_tpUserIP = a})

-- | Multipart request metadata.
tpPayload :: Lens' TemplatePatch' Template
tpPayload
  = lens _tpPayload (\ s a -> s{_tpPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpKey :: Lens' TemplatePatch' (Maybe AuthKey)
tpKey = lens _tpKey (\ s a -> s{_tpKey = a})

-- | OAuth 2.0 token for the current user.
tpOAuthToken :: Lens' TemplatePatch' (Maybe OAuthToken)
tpOAuthToken
  = lens _tpOAuthToken (\ s a -> s{_tpOAuthToken = a})

-- | Table to which the updated template belongs
tpTableId :: Lens' TemplatePatch' Text
tpTableId
  = lens _tpTableId (\ s a -> s{_tpTableId = a})

-- | Selector specifying which fields to include in a partial response.
tpFields :: Lens' TemplatePatch' (Maybe Text)
tpFields = lens _tpFields (\ s a -> s{_tpFields = a})

instance GoogleAuth TemplatePatch' where
        authKey = tpKey . _Just
        authToken = tpOAuthToken . _Just

instance GoogleRequest TemplatePatch' where
        type Rs TemplatePatch' = Template
        request = requestWith fusionTablesRequest
        requestWith rq TemplatePatch'{..}
          = go _tpTableId _tpTemplateId _tpQuotaUser
              (Just _tpPrettyPrint)
              _tpUserIP
              _tpFields
              _tpKey
              _tpOAuthToken
              (Just AltJSON)
              _tpPayload
          where go
                  = clientBuild (Proxy :: Proxy TemplatePatchResource)
                      rq
