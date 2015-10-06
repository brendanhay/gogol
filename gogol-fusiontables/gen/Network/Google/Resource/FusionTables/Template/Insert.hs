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
-- Module      : Network.Google.Resource.FusionTables.Template.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new template for the table.
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTemplateInsert@.
module Network.Google.Resource.FusionTables.Template.Insert
    (
    -- * REST Resource
      TemplateInsertResource

    -- * Creating a Request
    , templateInsert'
    , TemplateInsert'

    -- * Request Lenses
    , tiQuotaUser
    , tiPrettyPrint
    , tiUserIP
    , tiPayload
    , tiKey
    , tiOAuthToken
    , tiTableId
    , tiFields
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTemplateInsert@ which the
-- 'TemplateInsert'' request conforms to.
type TemplateInsertResource =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Template :> Post '[JSON] Template

-- | Creates a new template for the table.
--
-- /See:/ 'templateInsert'' smart constructor.
data TemplateInsert' = TemplateInsert'
    { _tiQuotaUser   :: !(Maybe Text)
    , _tiPrettyPrint :: !Bool
    , _tiUserIP      :: !(Maybe Text)
    , _tiPayload     :: !Template
    , _tiKey         :: !(Maybe AuthKey)
    , _tiOAuthToken  :: !(Maybe OAuthToken)
    , _tiTableId     :: !Text
    , _tiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiQuotaUser'
--
-- * 'tiPrettyPrint'
--
-- * 'tiUserIP'
--
-- * 'tiPayload'
--
-- * 'tiKey'
--
-- * 'tiOAuthToken'
--
-- * 'tiTableId'
--
-- * 'tiFields'
templateInsert'
    :: Template -- ^ 'payload'
    -> Text -- ^ 'tableId'
    -> TemplateInsert'
templateInsert' pTiPayload_ pTiTableId_ =
    TemplateInsert'
    { _tiQuotaUser = Nothing
    , _tiPrettyPrint = True
    , _tiUserIP = Nothing
    , _tiPayload = pTiPayload_
    , _tiKey = Nothing
    , _tiOAuthToken = Nothing
    , _tiTableId = pTiTableId_
    , _tiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tiQuotaUser :: Lens' TemplateInsert' (Maybe Text)
tiQuotaUser
  = lens _tiQuotaUser (\ s a -> s{_tiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tiPrettyPrint :: Lens' TemplateInsert' Bool
tiPrettyPrint
  = lens _tiPrettyPrint
      (\ s a -> s{_tiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tiUserIP :: Lens' TemplateInsert' (Maybe Text)
tiUserIP = lens _tiUserIP (\ s a -> s{_tiUserIP = a})

-- | Multipart request metadata.
tiPayload :: Lens' TemplateInsert' Template
tiPayload
  = lens _tiPayload (\ s a -> s{_tiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiKey :: Lens' TemplateInsert' (Maybe AuthKey)
tiKey = lens _tiKey (\ s a -> s{_tiKey = a})

-- | OAuth 2.0 token for the current user.
tiOAuthToken :: Lens' TemplateInsert' (Maybe OAuthToken)
tiOAuthToken
  = lens _tiOAuthToken (\ s a -> s{_tiOAuthToken = a})

-- | Table for which a new template is being created
tiTableId :: Lens' TemplateInsert' Text
tiTableId
  = lens _tiTableId (\ s a -> s{_tiTableId = a})

-- | Selector specifying which fields to include in a partial response.
tiFields :: Lens' TemplateInsert' (Maybe Text)
tiFields = lens _tiFields (\ s a -> s{_tiFields = a})

instance GoogleAuth TemplateInsert' where
        _AuthKey = tiKey . _Just
        _AuthToken = tiOAuthToken . _Just

instance GoogleRequest TemplateInsert' where
        type Rs TemplateInsert' = Template
        request = requestWith fusionTablesRequest
        requestWith rq TemplateInsert'{..}
          = go _tiTableId _tiQuotaUser (Just _tiPrettyPrint)
              _tiUserIP
              _tiFields
              _tiKey
              _tiOAuthToken
              (Just AltJSON)
              _tiPayload
          where go
                  = clientBuild (Proxy :: Proxy TemplateInsertResource)
                      rq
