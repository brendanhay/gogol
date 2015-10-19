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
-- Module      : Network.Google.Resource.DFAReporting.Creatives.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new creative.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingCreativesInsert@.
module Network.Google.Resource.DFAReporting.Creatives.Insert
    (
    -- * REST Resource
      CreativesInsertResource

    -- * Creating a Request
    , creativesInsert'
    , CreativesInsert'

    -- * Request Lenses
    , creProFileId
    , crePayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingCreativesInsert@ method which the
-- 'CreativesInsert'' request conforms to.
type CreativesInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "creatives" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] Creative :> Post '[JSON] Creative

-- | Inserts a new creative.
--
-- /See:/ 'creativesInsert'' smart constructor.
data CreativesInsert' = CreativesInsert'
    { _creProFileId :: !Int64
    , _crePayload   :: !Creative
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'creProFileId'
--
-- * 'crePayload'
creativesInsert'
    :: Int64 -- ^ 'profileId'
    -> Creative -- ^ 'payload'
    -> CreativesInsert'
creativesInsert' pCreProFileId_ pCrePayload_ =
    CreativesInsert'
    { _creProFileId = pCreProFileId_
    , _crePayload = pCrePayload_
    }

-- | User profile ID associated with this request.
creProFileId :: Lens' CreativesInsert' Int64
creProFileId
  = lens _creProFileId (\ s a -> s{_creProFileId = a})

-- | Multipart request metadata.
crePayload :: Lens' CreativesInsert' Creative
crePayload
  = lens _crePayload (\ s a -> s{_crePayload = a})

instance GoogleRequest CreativesInsert' where
        type Rs CreativesInsert' = Creative
        requestClient CreativesInsert'{..}
          = go _creProFileId (Just AltJSON) _crePayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativesInsertResource)
                      mempty
