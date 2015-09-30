{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.FusionTables.Template.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a specific template by its id
--
-- /See:/ <https://developers.google.com/fusiontables Fusion Tables API Reference> for @FusiontablesTemplateGet@.
module FusionTables.Template.Get
    (
    -- * REST Resource
      TemplateGetAPI

    -- * Creating a Request
    , templateGet
    , TemplateGet

    -- * Request Lenses
    , temQuotaUser
    , temPrettyPrint
    , temTemplateId
    , temUserIp
    , temKey
    , temOauthToken
    , temTableId
    , temFields
    , temAlt
    ) where

import           Network.Google.FusionTables.Types
import           Network.Google.Prelude

-- | A resource alias for @FusiontablesTemplateGet@ which the
-- 'TemplateGet' request conforms to.
type TemplateGetAPI =
     "tables" :>
       Capture "tableId" Text :>
         "templates" :>
           Capture "templateId" Int32 :> Get '[JSON] Template

-- | Retrieves a specific template by its id
--
-- /See:/ 'templateGet' smart constructor.
data TemplateGet = TemplateGet
    { _temQuotaUser   :: !(Maybe Text)
    , _temPrettyPrint :: !Bool
    , _temTemplateId  :: !Int32
    , _temUserIp      :: !(Maybe Text)
    , _temKey         :: !(Maybe Text)
    , _temOauthToken  :: !(Maybe Text)
    , _temTableId     :: !Text
    , _temFields      :: !(Maybe Text)
    , _temAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TemplateGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'temQuotaUser'
--
-- * 'temPrettyPrint'
--
-- * 'temTemplateId'
--
-- * 'temUserIp'
--
-- * 'temKey'
--
-- * 'temOauthToken'
--
-- * 'temTableId'
--
-- * 'temFields'
--
-- * 'temAlt'
templateGet
    :: Int32 -- ^ 'templateId'
    -> Text -- ^ 'tableId'
    -> TemplateGet
templateGet pTemTemplateId_ pTemTableId_ =
    TemplateGet
    { _temQuotaUser = Nothing
    , _temPrettyPrint = True
    , _temTemplateId = pTemTemplateId_
    , _temUserIp = Nothing
    , _temKey = Nothing
    , _temOauthToken = Nothing
    , _temTableId = pTemTableId_
    , _temFields = Nothing
    , _temAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
temQuotaUser :: Lens' TemplateGet' (Maybe Text)
temQuotaUser
  = lens _temQuotaUser (\ s a -> s{_temQuotaUser = a})

-- | Returns response with indentations and line breaks.
temPrettyPrint :: Lens' TemplateGet' Bool
temPrettyPrint
  = lens _temPrettyPrint
      (\ s a -> s{_temPrettyPrint = a})

-- | Identifier for the template that is being requested
temTemplateId :: Lens' TemplateGet' Int32
temTemplateId
  = lens _temTemplateId
      (\ s a -> s{_temTemplateId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
temUserIp :: Lens' TemplateGet' (Maybe Text)
temUserIp
  = lens _temUserIp (\ s a -> s{_temUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
temKey :: Lens' TemplateGet' (Maybe Text)
temKey = lens _temKey (\ s a -> s{_temKey = a})

-- | OAuth 2.0 token for the current user.
temOauthToken :: Lens' TemplateGet' (Maybe Text)
temOauthToken
  = lens _temOauthToken
      (\ s a -> s{_temOauthToken = a})

-- | Table to which the template belongs
temTableId :: Lens' TemplateGet' Text
temTableId
  = lens _temTableId (\ s a -> s{_temTableId = a})

-- | Selector specifying which fields to include in a partial response.
temFields :: Lens' TemplateGet' (Maybe Text)
temFields
  = lens _temFields (\ s a -> s{_temFields = a})

-- | Data format for the response.
temAlt :: Lens' TemplateGet' Text
temAlt = lens _temAlt (\ s a -> s{_temAlt = a})

instance GoogleRequest TemplateGet' where
        type Rs TemplateGet' = Template
        request = requestWithRoute defReq fusionTablesURL
        requestWithRoute r u TemplateGet{..}
          = go _temQuotaUser _temPrettyPrint _temTemplateId
              _temUserIp
              _temKey
              _temOauthToken
              _temTableId
              _temFields
              _temAlt
          where go
                  = clientWithRoute (Proxy :: Proxy TemplateGetAPI) r u
