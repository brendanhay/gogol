{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

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
module FusionTables.Template.Insert
    (
    -- * REST Resource
      TemplateInsertAPI

    -- * Creating a Request
    , templateInsert
    , TemplateInsert

    -- * Request Lenses
    , tiQuotaUser
    , tiPrettyPrint
    , tiUserIp
    , tiKey
    , tiOauthToken
    , tiTableId
    , tiFields
    , tiAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTemplateInsert@ which the
-- 'TemplateInsert' request conforms to.
type TemplateInsertAPI =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :> Post '[JSON] Template

-- | Creates a new template for the table.
--
-- /See:/ 'templateInsert' smart constructor.
data TemplateInsert = TemplateInsert
    { _tiQuotaUser   :: !(Maybe Text)
    , _tiPrettyPrint :: !Bool
    , _tiUserIp      :: !(Maybe Text)
    , _tiKey         :: !(Maybe Text)
    , _tiOauthToken  :: !(Maybe Text)
    , _tiTableId     :: !Text
    , _tiFields      :: !(Maybe Text)
    , _tiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiQuotaUser'
--
-- * 'tiPrettyPrint'
--
-- * 'tiUserIp'
--
-- * 'tiKey'
--
-- * 'tiOauthToken'
--
-- * 'tiTableId'
--
-- * 'tiFields'
--
-- * 'tiAlt'
templateInsert
    :: Text -- ^ 'tableId'
    -> TemplateInsert
templateInsert pTiTableId_ =
    TemplateInsert
    { _tiQuotaUser = Nothing
    , _tiPrettyPrint = True
    , _tiUserIp = Nothing
    , _tiKey = Nothing
    , _tiOauthToken = Nothing
    , _tiTableId = pTiTableId_
    , _tiFields = Nothing
    , _tiAlt = "json"
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
tiUserIp :: Lens' TemplateInsert' (Maybe Text)
tiUserIp = lens _tiUserIp (\ s a -> s{_tiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiKey :: Lens' TemplateInsert' (Maybe Text)
tiKey = lens _tiKey (\ s a -> s{_tiKey = a})

-- | OAuth 2.0 token for the current user.
tiOauthToken :: Lens' TemplateInsert' (Maybe Text)
tiOauthToken
  = lens _tiOauthToken (\ s a -> s{_tiOauthToken = a})

-- | Table for which a new template is being created
tiTableId :: Lens' TemplateInsert' Text
tiTableId
  = lens _tiTableId (\ s a -> s{_tiTableId = a})

-- | Selector specifying which fields to include in a partial response.
tiFields :: Lens' TemplateInsert' (Maybe Text)
tiFields = lens _tiFields (\ s a -> s{_tiFields = a})

-- | Data format for the response.
tiAlt :: Lens' TemplateInsert' Text
tiAlt = lens _tiAlt (\ s a -> s{_tiAlt = a})

instance GoogleRequest TemplateInsert' where
        type Rs TemplateInsert' = Template
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TemplateInsert{..}
          = go _tiQuotaUser _tiPrettyPrint _tiUserIp _tiKey
              _tiOauthToken
              _tiTableId
              _tiFields
              _tiAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TemplateInsertAPI)
                      r
                      u
