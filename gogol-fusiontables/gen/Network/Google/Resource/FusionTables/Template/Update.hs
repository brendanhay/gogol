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
-- Module      : Network.Google.Resource.FusionTables.Template.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing template
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTemplateUpdate@.
module Network.Google.Resource.FusionTables.Template.Update
    (
    -- * REST Resource
      TemplateUpdateResource

    -- * Creating a Request
    , templateUpdate'
    , TemplateUpdate'

    -- * Request Lenses
    , temQuotaUser
    , temPrettyPrint
    , temTemplateId
    , temUserIP
    , temPayload
    , temKey
    , temOAuthToken
    , temTableId
    , temFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTemplateUpdate@ which the
-- 'TemplateUpdate'' request conforms to.
type TemplateUpdateResource =
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
                           ReqBody '[JSON] Template :> Put '[JSON] Template

-- | Updates an existing template
--
-- /See:/ 'templateUpdate'' smart constructor.
data TemplateUpdate' = TemplateUpdate'
    { _temQuotaUser   :: !(Maybe Text)
    , _temPrettyPrint :: !Bool
    , _temTemplateId  :: !Int32
    , _temUserIP      :: !(Maybe Text)
    , _temPayload     :: !Template
    , _temKey         :: !(Maybe AuthKey)
    , _temOAuthToken  :: !(Maybe OAuthToken)
    , _temTableId     :: !Text
    , _temFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'temQuotaUser'
--
-- * 'temPrettyPrint'
--
-- * 'temTemplateId'
--
-- * 'temUserIP'
--
-- * 'temPayload'
--
-- * 'temKey'
--
-- * 'temOAuthToken'
--
-- * 'temTableId'
--
-- * 'temFields'
templateUpdate'
    :: Int32 -- ^ 'templateId'
    -> Template -- ^ 'payload'
    -> Text -- ^ 'tableId'
    -> TemplateUpdate'
templateUpdate' pTemTemplateId_ pTemPayload_ pTemTableId_ =
    TemplateUpdate'
    { _temQuotaUser = Nothing
    , _temPrettyPrint = True
    , _temTemplateId = pTemTemplateId_
    , _temUserIP = Nothing
    , _temPayload = pTemPayload_
    , _temKey = Nothing
    , _temOAuthToken = Nothing
    , _temTableId = pTemTableId_
    , _temFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
temQuotaUser :: Lens' TemplateUpdate' (Maybe Text)
temQuotaUser
  = lens _temQuotaUser (\ s a -> s{_temQuotaUser = a})

-- | Returns response with indentations and line breaks.
temPrettyPrint :: Lens' TemplateUpdate' Bool
temPrettyPrint
  = lens _temPrettyPrint
      (\ s a -> s{_temPrettyPrint = a})

-- | Identifier for the template that is being updated
temTemplateId :: Lens' TemplateUpdate' Int32
temTemplateId
  = lens _temTemplateId
      (\ s a -> s{_temTemplateId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
temUserIP :: Lens' TemplateUpdate' (Maybe Text)
temUserIP
  = lens _temUserIP (\ s a -> s{_temUserIP = a})

-- | Multipart request metadata.
temPayload :: Lens' TemplateUpdate' Template
temPayload
  = lens _temPayload (\ s a -> s{_temPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
temKey :: Lens' TemplateUpdate' (Maybe AuthKey)
temKey = lens _temKey (\ s a -> s{_temKey = a})

-- | OAuth 2.0 token for the current user.
temOAuthToken :: Lens' TemplateUpdate' (Maybe OAuthToken)
temOAuthToken
  = lens _temOAuthToken
      (\ s a -> s{_temOAuthToken = a})

-- | Table to which the updated template belongs
temTableId :: Lens' TemplateUpdate' Text
temTableId
  = lens _temTableId (\ s a -> s{_temTableId = a})

-- | Selector specifying which fields to include in a partial response.
temFields :: Lens' TemplateUpdate' (Maybe Text)
temFields
  = lens _temFields (\ s a -> s{_temFields = a})

instance GoogleAuth TemplateUpdate' where
        authKey = temKey . _Just
        authToken = temOAuthToken . _Just

instance GoogleRequest TemplateUpdate' where
        type Rs TemplateUpdate' = Template
        request = requestWith fusionTablesRequest
        requestWith rq TemplateUpdate'{..}
          = go _temTableId _temTemplateId _temQuotaUser
              (Just _temPrettyPrint)
              _temUserIP
              _temFields
              _temKey
              _temOAuthToken
              (Just AltJSON)
              _temPayload
          where go
                  = clientBuild (Proxy :: Proxy TemplateUpdateResource)
                      rq
