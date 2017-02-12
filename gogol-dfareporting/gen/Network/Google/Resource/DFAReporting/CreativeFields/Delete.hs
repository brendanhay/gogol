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
-- Module      : Network.Google.Resource.DFAReporting.CreativeFields.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing creative field.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.creativeFields.delete@.
module Network.Google.Resource.DFAReporting.CreativeFields.Delete
    (
    -- * REST Resource
      CreativeFieldsDeleteResource

    -- * Creating a Request
    , creativeFieldsDelete
    , CreativeFieldsDelete

    -- * Request Lenses
    , cfdProFileId
    , cfdId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.creativeFields.delete@ method which the
-- 'CreativeFieldsDelete' request conforms to.
type CreativeFieldsDeleteResource =
     "dfareporting" :>
       "v2.7" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "creativeFields" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing creative field.
--
-- /See:/ 'creativeFieldsDelete' smart constructor.
data CreativeFieldsDelete = CreativeFieldsDelete'
    { _cfdProFileId :: !(Textual Int64)
    , _cfdId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CreativeFieldsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cfdProFileId'
--
-- * 'cfdId'
creativeFieldsDelete
    :: Int64 -- ^ 'cfdProFileId'
    -> Int64 -- ^ 'cfdId'
    -> CreativeFieldsDelete
creativeFieldsDelete pCfdProFileId_ pCfdId_ =
    CreativeFieldsDelete'
    { _cfdProFileId = _Coerce # pCfdProFileId_
    , _cfdId = _Coerce # pCfdId_
    }

-- | User profile ID associated with this request.
cfdProFileId :: Lens' CreativeFieldsDelete Int64
cfdProFileId
  = lens _cfdProFileId (\ s a -> s{_cfdProFileId = a})
      . _Coerce

-- | Creative Field ID
cfdId :: Lens' CreativeFieldsDelete Int64
cfdId
  = lens _cfdId (\ s a -> s{_cfdId = a}) . _Coerce

instance GoogleRequest CreativeFieldsDelete where
        type Rs CreativeFieldsDelete = ()
        type Scopes CreativeFieldsDelete =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient CreativeFieldsDelete'{..}
          = go _cfdProFileId _cfdId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy CreativeFieldsDeleteResource)
                      mempty
